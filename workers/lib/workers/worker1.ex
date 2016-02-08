defmodule Workers.Worker1 do

  use GenServer

  def start_link() do
    GenServer.start_link(__MODULE__, :ok, [])
  end

  def init(:ok) do
    IO.puts "#{__MODULE__} started"
    adder = add(3,4)
    IO.puts adder
    {:ok, %{}}
  end

  defp add(x, y) do
    x + y
  end

end
