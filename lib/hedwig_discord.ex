defmodule HedwigDiscord do
  use Application

  def start(_, _) do
    import Supervisor.Spec, warn: false

    children = [
      supervisor(HedwigDiscord.ConnectionSupervisor, [])
    ]

    Supervisor.start_link(children, strategy: :one_for_one)
  end
end
