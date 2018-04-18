defmodule Hello.DemoController do
   use Hello.Web, :controller
   def show(conn,params) do
     render conn, "index.json",params
   end

   def index(conn,params) do
    render conn, "index.json",params
   end

   def app(conn,params) do
    render conn, "app.json",params
   end

   def create(conn, params) do
    render conn, "create.json",params
   end

   def update(conn,params) do
    render conn, "update.json",params
   end
end
