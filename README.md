HandsMen Threads – Salesforce CRM Project
Welcome to the official Salesforce implementation for HandsMen Threads: Elevating the Art of Sophistication in Men's Fashion.

This project delivers a tailored CRM system built on Salesforce to manage everything from customer orders and product inventory to loyalty programs and automated email communication.

🧵 Project Highlights
This Salesforce solution helps HandsMen Threads streamline:

🧑‍💼 Customer relationships

📦 Product ordering & inventory

🎁 Loyalty reward programs

📧 Automated email alerts & flows

🔐 User roles, permissions & security

🧩 What’s Included
🔹 Custom Objects
Object	Description
HandsMen_Customer__c	Manages customer info & loyalty
HandsMen_Order__c	Tracks order status & quantity
HandsMen_Product__c	Stores product catalog
Inventory__c	Manages stock & product availability
Marketing_Campaign__c	Organizes marketing events

🔹 Automation Components
Flows

Order Confirmation Email

Low Stock Email Alert

Scheduled Loyalty Tier Update

Apex Code

OrderTriggerHandler: validates quantity rules

OrderTrigger: handles before-insert/update events

Batch Apex

LoyaltyPointsBatch: updates weekly customer points

InventorySyncBatch: syncs stock daily

🔹 Security & Access
Custom Profiles & Roles

Fine-tuned Permission Sets

🔹 Lightning App
Custom Salesforce Lightning App: HandsMen Threads, featuring:

HandsMen Customers

Orders

Products

Inventory

Marketing Campaigns

Reports & Dashboards

🔹 Email Templates
Formatted Classic Email Templates for:

✅ Order Confirmation

⚠️ Low Stock Alert

🏆 Loyalty Program Congratulations

🚀 Project Setup (Using Salesforce CLI)
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
Test flows, triggers, and batch jobs from UI or Developer Console

🗂 Folder Structure
pgsql
Copy
Edit
sfdx-project.json
force-app/
├── main/
│   └── default/
│       ├── objects/
│       ├── flows/
│       ├── classes/
│       ├── triggers/
│       ├── layouts/
│       └── email/
.gitignore
README.md
package.xml
📦 Metadata Retrieval
To retrieve your full project metadata, use this package.xml:

xml
Copy
Edit
<?xml version="1.0" encoding="UTF-8"?>
<Package xmlns="http://soap.sforce.com/2006/04/metadata">
  <types><members>*</members><name>ApexClass</name></types>
  <types><members>*</members><name>ApexTrigger</name></types>
  <types><members>*</members><name>Flow</name></types>
  <types><members>*</members><name>CustomObject</name></types>
  <types><members>*</members><name>EmailTemplate</name></types>
  <types><members>*</members><name>PermissionSet</name></types>
  <types><members>*</members><name>Profile</name></types>
  <types><members>*</members><name>Layout</name></types>
  <types><members>*</members><name>LightningComponentBundle</name></types>
  <version>59.0</version>
</Package>
Use this with:

bash
Copy
Edit
sf project retrieve start -x package.xml
👤 Author
Bhuvandeep Achar
🔗 GitHub: bhuvandeep-achar

💬 Need Help?
Open an issue, start a discussion, or submit a pull request. Let’s elevate this project together! ✨
