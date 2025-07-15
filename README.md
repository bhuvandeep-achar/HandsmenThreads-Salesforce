HandsMen Threads – Salesforce CRM Project
Welcome to the official Salesforce implementation for HandsMen Threads: Elevating the Art of Sophistication in Men's Fashion.

This project delivers a tailored CRM system built on Salesforce to manage customer orders, product inventory, loyalty programs, and automated email communication.

Project Highlights
This Salesforce solution helps HandsMen Threads streamline:

Customer relationship management

Product ordering and inventory

Loyalty reward programs

Automated email alerts and flows

User roles, permissions, and security

What’s Included
Custom Objects
Object Name	Description
HandsMen_Customer__c	Manages customer information and loyalty
HandsMen_Order__c	Tracks order status and quantity
HandsMen_Product__c	Stores product catalog
Inventory__c	Manages stock and product availability
Marketing_Campaign__c	Organizes marketing events

Automation Components
Flows

Order Confirmation Email

Low Stock Email Alert

Scheduled Loyalty Tier Update

Apex Code

OrderTriggerHandler: validates quantity rules

OrderTrigger: handles before-insert and before-update events

Batch Apex

LoyaltyPointsBatch: updates weekly customer points

InventorySyncBatch: synchronizes stock daily

Security & Access
Custom Profiles and Roles

Fine-tuned Permission Sets

Lightning App
Custom Salesforce Lightning App: HandsMen Threads, featuring:

HandsMen Customers

Orders

Products

Inventory

Marketing Campaigns

Reports and Dashboards

Email Templates
Formatted Classic Email Templates for:

Order Confirmation

Low Stock Alert

Loyalty Program Congratulations

Project Setup (Using Salesforce CLI)
Log in to your org:

bash
Copy
Edit
sf org login web -a handsmen-dev
Deploy metadata to your org:

bash
Copy
Edit
sf project deploy start -o handsmen-dev
Assign permission sets to users:

bash
Copy
Edit
sf force:user:permset:assign -n Permission_Platform_1
Test flows, triggers, and batch jobs from the UI or Developer Console.

Author
Bhuvandeep Achar
GitHub: bhuvandeep-achar

Need Help?
Open an issue, start a discussion, or submit a pull request. Let’s elevate this project together!
