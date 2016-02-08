defmodule Workers.Worker2 do

  use GenServer

  def start_link() do
    GenServer.start_link(__MODULE__, :ok, [])
  end

  def init(:ok) do
    IO.puts "#{__MODULE__} started"
    divider = divide(6,2)
    IO.puts divider
    {:ok, %{}}
  end

  defp divide(x, y) do
    x / y
  end

end
