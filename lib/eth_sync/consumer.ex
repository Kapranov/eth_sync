defmodule EthSync.Consumer do
  use GenStage

  def init(_), do: {:consumer, nil}

  def handle_events(blocks, _from, state) do
    blocks
    |> Enum.each(fn
      {:ok, %{"number" => n}} ->
        IO.puts("Received block #{n}")
        :timer.sleep(1_000)
    end)

    {:noreply, [], state}
  end
end
