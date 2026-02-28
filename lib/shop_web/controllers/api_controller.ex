defmodule ShopWeb.ApiController do
  use ShopWeb, :controller

  alias Shop.Products

  def index(conn, _params) do
    products = Products.get_products()
    conn
      |> assign(:products, products)
      |> render(:index)
  end
end
