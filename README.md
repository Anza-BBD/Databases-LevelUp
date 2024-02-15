# Online Pharmacy

## Description

The **Online Pharmacy Database System** project aims to develop the database system for an online pharmacy platform, meant for selling drugs. This database serves as the backbone for managing all aspects of the pharmacy's operations, including product management and order processing, as well as information about the customers and pharmacists.

## Team Members

- Alex Kruger
- Anza Mugwabana
- Arinaho Muleba
- Boitumelo Raletsemo
- Brittney Soloman

## Features

- Database schema design optimized for efficient storage and retrieval of pharmacy-related data.
- Tables for storing information about medications, including details such as name, description, price, and supplier.
- Tables for managing customer accounts and order details.
- Implementation of views, stored procedures, and functions to facilitate complex queries and data manipulation tasks.
- Adherence to normalization principles to ensure data integrity and minimize redundancy.

## Technologies Used

- Database Management System: PostgreSQL
- Database Change Management Tool: Flyway
- Cloud Platform: Amazon Web Services (AWS)
- Infrastructure as Code: CloudFormation
- Version Control: Git, GitHub

## Links
- Jira: https://bbd-boitumeloraletsemo.atlassian.net/jira/software/projects/KAN/boards/1
- Confluence: https://bbd-boitumeloraletsemo.atlassian.net/l/cp/CM902fZx

## Setup Instructions

### Prerequisites
- Install Flyway: https://www.red-gate.com/products/flyway/community/download/
- Install PostgreSQL: https://www.postgresql.org/download/

### Running the database
1. Clone the repository: git clone https://github.com/Anza-BBD/Databases-LevelUp.git
2. Navigate into the project directory: cd Databases-LevelUp
2. Run the Flyway migration scripts: flyway migrate
3. Run the postgres database: psql -h databaselevelup-postgres-instance-in-eu-west-1.cpnugokqk56v.eu-west-1.rds.amazonaws.com -U postgres -d Pharmacy

## Acknowledgements
We would like to express our gratitude to the ATC team for giving us this amazing opportunity to work on this project together and grow as developers.
