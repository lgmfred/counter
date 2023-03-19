defmodule Counter.Count.CountServer do
  use GenServer

  def start_link(_opts) do
    GenServer.start_link(__MODULE__, 0, name: __MODULE__)
  end

  def get do
    GenServer.call(__MODULE__, :get)
  end

  def increment(amount \\ 1) do
    GenServer.call(__MODULE__, {:increment, amount})
  end

  @impl true
  def init(args) do
    {:ok, args}
  end

  @impl true
  def handle_call(:get, _from, state) do
    {:reply, state, state}
  end

  def handle_call({:increment, amount}, _from, state) do
    {:reply, state + amount, state + amount}
  end
end
