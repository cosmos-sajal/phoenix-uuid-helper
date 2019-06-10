defmodule UuidHelperModule.UUIDSchema do
  @moduledoc """
  Contains schema macros to add uuid fields to a schema
  """

  import Ecto

  @doc """
  Adds the uuid column to a schema
      defmodule User do
        use Ecto.Schema
        import Trafi.ModelHelpers.UUID.Schema
        schema "users" do
          field :email,           :string
          uuid_schema()
        end
      end
  """
  defmacro uuid_schema do
    quote do
      field(:uuid, :binary_id, read_after_writes: true)
    end
  end

  @doc """
  Generates and return uuid
  """
  def generate_uuid() do
    Ecto.UUID.generate()
  end
end
