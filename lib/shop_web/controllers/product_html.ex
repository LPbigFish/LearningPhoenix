defmodule ShopWeb.ProductHTML do
  use ShopWeb, :html

  embed_templates "product_html/*"

  attr :name, :string, required: true
  def product(assigns) do
    ~H"""
      <h1>Product <%= @name %></h1>
    """
  end
end
