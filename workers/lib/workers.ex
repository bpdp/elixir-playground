defmodule Workers do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec
    tree =
      [
        worker(Workers.Worker1, []),
        worker(Workers.Worker2, []),
        worker(Workers.Worker3, [])
      ]
    opts = [name: Workers.Sup, strategy: :one_for_one]
    Supervisor.start_link(tree, opts)
  end

end
