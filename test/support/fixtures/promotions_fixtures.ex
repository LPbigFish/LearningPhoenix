defmodule Shop.PromotionsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Shop.Promotions` context.
  """

  @doc """
  Generate a unique promotion code.
  """
  def unique_promotion_code, do: "some code#{System.unique_integer([:positive])}"

  @doc """
  Generate a promotion.
  """
  def promotion_fixture(attrs \\ %{}) do
    {:ok, promotion} =
      attrs
      |> Enum.into(%{
        code: unique_promotion_code(),
        expires_at: ~U[2026-02-26 18:00:00Z],
        name: "some name"
      })
      |> Shop.Promotions.create_promotion()

    promotion
  end

  @doc """
  Generate a unique promotion code.
  """
  def unique_promotion_code, do: "some code#{System.unique_integer([:positive])}"

  @doc """
  Generate a promotion.
  """
  def promotion_fixture(attrs \\ %{}) do
    {:ok, promotion} =
      attrs
      |> Enum.into(%{
        code: unique_promotion_code(),
        expires_at: ~U[2026-02-27 10:42:00Z],
        name: "some name"
      })
      |> Shop.Promotions.create_promotion()

    promotion
  end
end
