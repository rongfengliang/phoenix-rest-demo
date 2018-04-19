defmodule Hello.Router do
  use Hello.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :browser2 do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :put_secure_browser_headers
  end
  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Hello do
    pipe_through :browser # Use the default browser stack
    get "/", PageController, :index
    get "/index/:name", PageController, :appdemo
    get "/user/:name" , UserController, :index
    get "/demo" , DemoController, :index
    get "/redirectdemo" , AppController, :redirectdemo
  end
  scope "/appdemo", Hello do
    pipe_through :browser2
    get "/demo" , AppController, :index
    post "/demo" , AppController, :index
    get "/index" , AppController, :app
    get "/" , AppController, :app
    get "/rong" , AppController, :rong
  end

  scope "/appdemo2", Hello , as: :v1 do
    pipe_through :browser2
    get "/demo" , AppController, :index
    post "/demo" , AppController, :index
    get "/index" , AppController, :app
    get "/" , AppController, :app
    get "/rong" , AppController, :rong, as: :redirectdemo
  end

  scope "/api", Hello do
    pipe_through :api
    resources "/demo" , DemoController
  end
end
