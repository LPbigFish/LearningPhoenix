defmodule ShopWeb.RandomController do
  use ShopWeb, :controller

  def random(conn, _param) do
    render(conn, :random)
  end
end
