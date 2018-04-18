defmodule Hello.UserController do

  use Hello.Web, :controller
  def index(conn, params) do
    # render conn, "index.html",user: params
    render conn, "index.json", todos: params
  end
end
