# Counter

A `Counter` application which stores the current count in a [`GenServer`](https://hexdocs.pm/elixir/GenServer.html) under the application's supervision tree.

It renders the current count on the `"/"` route. The user should be able to increment the count by pressing a button, and set the amount to increment the count by using a number input.

## Running the app

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix