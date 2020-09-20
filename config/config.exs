# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :that_notebook,
  ecto_repos: [ThatNotebook.Repo]

# Configures the endpoint
config :that_notebook, ThatNotebookWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OzJVOlJVHogG4Ps28JrdLKWp3YnSWLNbmOemHh73y/F2O4Vdw//LMsi5ieheFFV3",
  render_errors: [view: ThatNotebookWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ThatNotebook.PubSub,
  live_view: [signing_salt: "Kd9fIj6y"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
