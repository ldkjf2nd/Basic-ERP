# Basic ERP

Basic ERP system with the modules: Sales Order, Work Order, Customer, Items, and Inventory.
Each modules are represented by "manager" classes in module folder.
Modules have basic search, create, update functions. 
Work Order module have basic "complete" function that creates new inventory from item quantities being produced in the Work Order.
Features such as production operations, material consumption are not implemented.

Developed in Java and Eclipse IDE using JDBC API to connect to MYSQL database server.
MYSQL database was setup and hosted using Wampserver, but the project should work with any other server.

ERP.sql is the setup file for ERP database.
ERP.zip is Java project archive.
ConnectionManager class in folder "db" controls database user authentication.

Issue updating Inventory records.
