# Cult Classic Quoter

#### An app to see quotes from your favorite cult classic TV shows, January 31, 2020

#### By Jonathan Salfen

## Description

Cult Classic Quoter is an app to see quotes from your favorite cult classic TV shows.

Find this project at https://github.com/jonathansalfen/epicodus-week-12-solo-project

## Project Learning Goals

- Application successfully returns responses for API calls.
- README thoroughly describes all endpoints along with parameters that can be used.

## Specifications / Routing

| HTTP/CRUD | Route | What it does |
| ----------- | ----------- | ----------- |
| GET | /shows | lists all shows in database |
| GET | /shows/:show_id/quotes | lists all quotes for specified show |

## Setup/Installation Requirements

** You will need Ruby 2.5.1 installed on your machine for this program to work properly**

1. Go to the [project repository on GitHub](https://github.com/jonathansalfen/epicodus-week-9-solo-project).
2. Select the **Clone or Download** button and copy the link.

In your machines terminal, type:
3. `git clone [insert link here]` to download the file.
4. `cd [file name]` into the home directory of the file.
5. `bundle` to install the gems in the Gemfile.
6. `ceatedb volunteer_tracker` to create the PSQL database (You need Postgres installed on your computer for this step.)
7. `psql database_backup.sql < volunteer_tracker` in the home directory to upload the database.
8. `createdb -T volunteer_tracker volunteer_tracker_test` to create a test copy of the database.
9. `postgres` to start the Postgres server.

Leave the Postgres server running, and in a different terminal window, type:
10. `rails s` to run the developmet server.

In your browser:
11. Go to **localhost:3000** to access the app.

EDIT ABOVE AFTER

## Known Bugs

At this time there are no known bugs.

## Support and contact details

If you have any issues, contact the creator through github @jonathansalfen.

## Technologies Used

This project uses:
- Ruby version 2.5.1
- Rails 5.2.4
- Postgres
- PostgreSQL
- See GemFile for further technologies.


### License

*Use of this program is free and open to the public*
