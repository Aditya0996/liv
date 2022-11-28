defmodule Liv.Repo do
  use Ecto.Repo,
    otp_app: :liv,
    adapter: Ecto.Adapters.Postgres
end
