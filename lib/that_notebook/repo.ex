defmodule ThatNotebook.Repo do
  use Ecto.Repo,
    otp_app: :that_notebook,
    adapter: Ecto.Adapters.Postgres
end
