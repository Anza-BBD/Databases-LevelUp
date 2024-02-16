# MedClick Pharmacy

## Description

The **MedClick Pharmacy Database System** project aims to develop the database system for an online pharmacy platform, meant for selling drugs. This database serves as the backbone for managing all aspects of the pharmacy's operations, including product management and order processing, as well as information about the customers and pharmacists.

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
- Install PostgreSQL 16: https://www.postgresql.org/download/

### Running the database
1. Clone the repository:

    ```bash
    git clone https://github.com/Anza-BBD/Databases-LevelUp.git
    ```

2. Navigate into the project directory: 

    ```bash
    cd Databases-LevelUp
    ```
3. Set up a role in your AWS account for this repo
    ```
    You can follow instructions here:
    https://aws.amazon.com/blogs/security/use-iam-roles-to-connect-github-actions-to-actions-in-aws/
    ```
4. Set the following secrets and variables under the Actions section for the repo
    ```
    Secrets:
        DB_PASSWORD: The password you want for the DB
        FLYWAY_HUB_ACCESS_TOKEN: Access token for the flyway API
    Variables:
        AWS_REGION: Region to deploy to
        CLOUDFORMATION_STACKNAME: Name of the stack
        CREATED_USING: How AWS resources will be created i.e cloudformation
        DB_NAME: Database Name
        DB_USER: Database Master User
        OWNER: Identify yourself e.g email address
        ROLE_ARN: The AWS role ARN from previous step
        ROLE_SESSION_NAME: Arbitrary name for the session
    ```

5. Run the Infrastructure Deploy Github action.

6. Run the Flyway Migration Github action. 

7. Run the Postgres Database:
    ```bash
    psql -h <AWS DB endpoint> -U <DB_USER> -d <DB_NAME>
    e.g
    psql -h <databaselevelup-postgres-instance-in-eu-west-1.cpnugokqk56v.eu-west-1.rds.amazonaws.com> -U postgres -d Pharmacy
    ```
8. Have fun!

## Acknowledgements
We would like to express our gratitude to the **ATC** team for giving us this amazing opportunity to work on this project together and grow as developers.
