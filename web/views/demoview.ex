defmodule Hello.DemoView do
  use Hello.Web, :view
  def render("index.json", _params) do
    %{
      name: "dalong",
      age: 444
    }
  end
  def render("create.json", _params) do
    [
      %{
        name:  "update",
        age: 333,
      }
     ]
  end
  def render("update.json", _params) do
    [
      %{
        name: "appdemo",
        age: 444
      },
      %{
        name: "aaaaaa",
        age: 5
      },
      %{
        name: "dalaaaong",
        age: 44
      },
      %{
        name: "dalong",
        age: 2
      }
     ]
  end
  def render("app.json",_params) do
   [
    %{
      name: "appdemo",
      age: 444
    },
    %{
      name: "aaaaaa",
      age: 5
    },
    %{
      name: "dalaaaong",
      age: 44
    },
    %{
      name: "dalong",
      age: 2
    }
   ]
  end
end
