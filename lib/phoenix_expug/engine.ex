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
    try do
      file_path |> File.read! |> Expug.to_eex!
    rescue
      error in [Expug.Error] ->
        reraise %Expug.Error{error |
          message: "#{file_path}: " <> error.message}, System.stacktrace
      error ->
        reraise error, System.stacktrace
    end
  end
end
