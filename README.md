# UuidHelperModule
UUID helper for Database schemas
Adds the functionality of uuid column in your database table and your schema.

Steps to use this library -
1. Add the dependecy to your mix.exs file -

`{:uuid_helper_module, "~> 0.0.2"}`

2. Migration (if uuid is not supported) -

Create a migration using the following command -

`mix ecto.gen.migration add_uuid_support`

This will create a migration file, add the following code to the migration file -

```
use Ecto.Migration

def up do
  execute("CREATE EXTENSION IF NOT EXISTS \"uuid-ossp\" WITH SCHEMA public;")
end

def down do
  execute("DROP EXTENSION \"uuid_helper-ossp\";")
end
```
