#Rails CSV Importers Example

Create your own Importers for your Rails application
This app creates 4 models :
 - Candidates
 - Job
 - JobApplication 
 - Notes
 
Installing through the [Usage Instructions](#Usage) the application creates a DB with the related tables.
Through models you can decide how are linked between them, so the Importers can do proper insert to DB, 
using Validators and Relationship.

The importers are located in `lib/importers/...`.
The rake files are located in `lib/tasks/import/...`.
Take them as example and create your owns. It's free! :massage:
Imports have rake commandas as : `rake import:applicants`.

## Usage

From the root of the repository, run:

- `bundle install`
- `rails db:create db:migrate`
- `rails import:applicants 'data/filename.csv'`
- `rails import:notes 'data/filename.csv'`
- `rails server`
- go to `http://0.0.0.0:3000`


It use a Sqlite3 DB for easy set up.

### Nice to have || TODO :
 - Create a Button in the view to import data from the view
 - Tests 