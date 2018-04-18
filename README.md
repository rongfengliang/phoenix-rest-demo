# Hello phoenix rest demo project

To start your Phoenix app:

* Install dependencies with `mix deps.get`
* Create and migrate your database with `mix ecto.create && mix ecto.migrate`
* Install Node.js dependencies with `npm install`
* Start Phoenix endpoint with `mix phoenix.server  or mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## rest demo
 i use rest vscode plugin && you can see http directory for test

* post

```bash
http://localhost:4000/api/demo

curl --request POST \
  --url http://localhost:4000/api/demo \
  --header 'content-type: application/json' \
  --data '{"name": "sample","time": "Wed, 21 Oct 2015 18:27:50 GMT"}'

```

* put

```bash
http://localhost:4000/api/demo/demoid

curl --request PUT \
  --url http://localhost:4000/api/demo/appdemo \
  --header 'content-type: application/json' \
  --data '{"name": "sample","time": "Wed, 21 Oct 2015 18:27:50 GMT"}'

```

* get

```bash
http://localhost:4000/api/demo

curl --request GET \
  --url http://localhost:4000/api/demo
```