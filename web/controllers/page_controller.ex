defmodule Phx.PageController do
  use Phx.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  # def magic_numbers(conn, _params) do
  #   render conn, "magic_numbers.html"
  # end
end
