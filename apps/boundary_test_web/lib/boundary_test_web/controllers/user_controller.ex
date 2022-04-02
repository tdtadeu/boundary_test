defmodule BoundaryTestWeb.UserController do
  use BoundaryTestWeb, :controller

  def index(conn, _params) do
    BoundaryTest.foo()
    BoundaryTest.Accounts.foo()
    BoundaryTest.Accounts.User.foo()
    send_resp(conn, 200, "ok")
  end
end
