# UUID Helper module for phoenix application
UUID helper for Database schemas
Adds the functionality of uuid column in your database table and your schema.

Steps to use this library -

#### STEP 1

Add the dependecy to your mix.exs file -

`{:uuid_helper_module, "~> 0.0.2"}`

#### STEP 2

Migration -

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

#### STEP 3

Now to add uuid column in your table and schema.

Add uuid to a `schema` named `User` -

```
defmodule MyRepo.User do
  @moduledoc """
  """

  use Ecto.Schema

  import Ecto
  import UuidHelperModule.UUIDSchema

  schema "users" do
    field(:first_name, :string, null: false)

    uuid_schema()
  end
end
```

Add uuid column to `migration` file when trying to create a table named `user` -

```
defmodule MyRepo.Migrations.AddUser do
  use Ecto.Migration

  import UuidHelperModule.UUIDMigration

  def change do
    create table(:users) do
      add(:first_name, :string, null: false)
      uuid_column()
    end

    create_index_on_uuid("users")
  end
end

```

These will create uuid column to your schema and migration.

Try running the migration using `mix ecto.migrate`.
