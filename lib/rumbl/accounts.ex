defmodule Rumbl.Accounts do

  @moduledoc """
  The Accounts context.
  """

  alias Rumbl.Accounts.User

  def list_users do
    [
      %User{id: "1", name: "Logan Wood", username: "lwood3499"},
      %User{id: "2", name: "Tiffany Wood", username: "twood"},
      %User{id: "3", name: "Amrynn Wood", username: "amjamrobot"},
      %User{id: "4", name: "Eisley Wood", username: "snakegirl"}
    ]
  end

  def get_user(id) do
    Enum.find(list_users(), fn map -> map.id == id end)
  end

  def get_user_by(params) do
    Enum.find(list_users(), fn map ->
      Enum.all?(params, fn {key,val} -> Map.get(map, key) == val end)
     end)
  end
end
