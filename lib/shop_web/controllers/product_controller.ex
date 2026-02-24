defmodule ShopWeb.ProductController do
  use ShopWeb, :controller

  @products [
      %{id: "1", name: "God of War"},
      %{id: "2", name: "Overwatch"},
      %{id: "3", name: "Forza 4 Horizon"}
    ]

  def index(conn, _params) do
    conn
      |> assign(:products, @products)
      |> render(:index)
  end

  def show(conn, %{"id" => id}) do
    prod = Enum.find(@products, fn x -> x.id == id end)
    conn
      |> assign(:product, prod)
      |> render(:show)
  end
end
