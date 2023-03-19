defmodule CounterWeb.PageController do
  use CounterWeb, :controller

  def index(conn, _params) do
    redirect(conn, to: Routes.count_path(conn, :count))
  end
end
