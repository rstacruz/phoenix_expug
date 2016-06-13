defmodule PhoenixExpug.Engine do
  @behaviour Phoenix.Template.Engine

  @doc """
  Precompiles the String file_path into a function defintion, using Calliope engine
  """
  def compile(path, _name) do
    path
    |> read!
    |> EEx.compile_string(engine: Phoenix.HTML.Engine, file: path, line: 1)
  end

  defp read!(file_path) do
    case file_path |> File.read! |> Expug.to_eex do
      {:ok, eex} ->
        eex
      err ->
        raise err # TODO
    end
  end
end
