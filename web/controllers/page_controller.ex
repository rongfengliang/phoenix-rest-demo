defmodule Hello.PageController do
  use Hello.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
  def appdemo(conn, params) do
    IO.inspect params
    render conn, "appdemo.html",name: params["name"]
  end
end
