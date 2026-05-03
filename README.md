# Home Sharing Platform

A SQL-driven home sharing platform repository containing database schema, sample data, stored procedures, triggers, views, and project documentation.

## Project Structure

- `Database/`
  - SQL scripts for database creation, data insertion, stored procedures, triggers, views, and XML handling.
- `Diagrams/`
  - Diagrams related to the database design and project architecture.
- `Project-Report/`
  - Project report documents and related deliverables.

## Key Files

- `Database/Create_Database.sql` - database schema creation scripts.
- `Database/Data_Inserted.sql` - sample data insertion scripts.
- `Database/Function.sql` - user-defined functions.
- `Database/Proc.sql` - stored procedures.
- `Database/trigger_*.sql` - trigger definitions for messages, notifications, reviews, and replies.
- `Database/View.sql` - database views.
- `Database/XML.sql` - XML data handling scripts.

## Notes

This project currently includes database development artifacts and documentation.

## How to Use

1. Open the project in your SQL development environment.
2. Run the database creation scripts in the `Database/` folder.
3. Load sample data with `Data_Inserted.sql`.
4. Review triggers, views, and stored procedures for business logic.

## GitHub Upload

This repository was initialized locally. To push it to GitHub, configure a remote repository and run:

```bash
git remote add origin <your-github-repo-url>
git branch -M main
git push -u origin main
```
