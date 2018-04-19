defmodule Hello.AppController do

  use Hello.Web, :controller

  def app(conn, _params) do

   html conn, """
   <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/clappr@latest/dist/clappr.min.js"></script>
    <style>
     #player{
        margin: 0 auto;
        width: 50%;
     }
    </style>
</head>
<body>
    <div id="player"></div>
    <script>
      var player = new Clappr.Player({source: "/appdemos/mydemo.m3u8", parentId: "#player"});
    </script>
</body>
</html>
   """
  end

  def index(conn, params) do
    json conn,  [%{
      name: "dalongdemo",
      params: params
    },
    %{
      name: "dalongdemo",
      params: params
    },
    %{
      name: "dalongdemo",
      params: params
    },
    %{
      name: "dalongdemo",
      params: params
    }
  ]

  end

  def info(conn, params) do



  end

  def rong(conn, _prarams) do
    redirect conn, to: "/redirectdemo"
  end
  def redirectdemo(conn,_params) do
    text conn,"appdemo redirect"
  end
end
