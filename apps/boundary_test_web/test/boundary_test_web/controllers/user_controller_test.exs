defmodule BoundaryTestWeb.UserControllerTest do
  use BoundaryTestWeb.ConnCase

  test "GET /users", %{conn: conn} do
    conn = get(conn, "/users")
    assert response(conn, 200) == "ok"
  end
end
