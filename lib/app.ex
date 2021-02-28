defmodule App do
  alias App.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
