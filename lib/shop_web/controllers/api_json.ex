defmodule ShopWeb.ApiJSON do

  def index(%{products: products}) do
    %{data: products}
  end
end
