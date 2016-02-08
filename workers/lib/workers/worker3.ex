defmodule Workers.Worker3 do

  use GenServer

  def start_link() do
    GenServer.start_link(__MODULE__, :ok, [])
  end

  def init(:ok) do
    IO.puts "#{__MODULE__} started"
    multiplier = multiply(5,12)
    IO.puts multiplier
    {:ok, %{}}
  end

  defp multiply(x, y) do
    x * y
  end

end
