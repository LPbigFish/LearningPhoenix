defmodule ShopWeb.ProductJSON do
  def index(_assings) do
    %{data: [
      %{name: "GG"},
      %{name: "Mogged"}
    ]}
  end
end
