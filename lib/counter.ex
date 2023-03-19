defmodule Counter do
  alias Counter.Count.CountServer

  def get do
    CountServer.get()
  end

  def increment(amount \\ 1) do
    CountServer.increment(amount)
  end
end
