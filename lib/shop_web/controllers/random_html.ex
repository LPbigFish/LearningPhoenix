defmodule ShopWeb.RandomHTML do
  use ShopWeb, :html

  def random(assigns) do
    ~H"""
      <h1>Randomness: </h1>
    """
  end
end
