global class LoyaltyPointsBatchJob implements Database.Batchable<SObject>, Schedulable {

    global Database.QueryLocator start(Database.BatchableContext BC) {
        return Database.getQueryLocator(
            'SELECT Id, Name FROM HandsMen_Customer__c'
        );
    }
    
    global void execute(Database.BatchableContext BC, List<SObject> records) {
        
        List<HandsMen_Customer__c> customersToUpdate = new List<HandsMen_Customer__c>();
        
        for (SObject record : records) {
            
            HandsMen_Customer__c customer = (HandsMen_Customer__c) record;
            
            List<HandsMen_Order__c> orders = [
                SELECT Id, Total_Amount__c
                FROM HandsMen_Order__c
                WHERE Customer__c = :customer.Id
            ];
            
            Integer points = 0;
            
            for (HandsMen_Order__c order : orders) {
                if (order.Total_Amount__c > 100) {
                    points += 10;
                }
            }
            
            // Determine Loyalty Status
            String status;
            if (points == 0) {
                status = 'Bronze';
            } else if (points <= 20) {
                status = 'Silver';
            } else {
                status = 'Gold';
            }
            
            customer.Loyalty_Status__c = status;
            customersToUpdate.add(customer);
        }
        
        if (!customersToUpdate.isEmpty()) {
            try {
                update customersToUpdate;
            } catch (DmlException e) {
                System.debug('Error updating loyalty status: ' + e.getMessage());
            }
        }
    }
    
    global void finish(Database.BatchableContext BC) {
        System.debug('Loyalty Points Calculation Batch Completed.');
    }
    
    global void execute(SchedulableContext sc) {
        LoyaltyPointsBatchJob job = new LoyaltyPointsBatchJob();
        Database.executeBatch(job, 200);
    }
}