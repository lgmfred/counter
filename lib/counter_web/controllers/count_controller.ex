defmodule CounterWeb.CountController do
  use CounterWeb, :controller

  def count(conn, _params) do
    count = Counter.get()
    render(conn, "count.html", count: count)
  end

  def increment(conn, _params) do
    increment =
      case Integer.parse(conn.params["increment"]) do
        {integer, _remainder_of_binary} -> integer
        _ -> 1
      end
      |> IO.inspect(label: "Integer value")

    Counter.increment(increment)
    redirect(conn, to: "#{Routes.count_path(conn, :increment)}?increment=#{increment}")
  end
end
