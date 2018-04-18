defmodule Hello.User do
  use Hello.Web, :model
    schema "users" do
    field :name, :string
    field :username, :string
    field :password, :string, virtual: true
    field :password_hash, :string
  end
end
