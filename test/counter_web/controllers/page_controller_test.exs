defmodule CounterWeb.PageControllerTest do
  use CounterWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 302) =~ "You are being <a href=\"/count\">redirected"
  end
end
