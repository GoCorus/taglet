use Mix.Config

config :logger, level: :info

config :taglet, ecto_repos: [Taglet.Repo]

config :taglet, repo: Taglet.Repo

config :taglet, Taglet.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "fanty",
  password: "maciek121",
  database: "taglet_test",
  hostname: "db",
  poolsize: 10
