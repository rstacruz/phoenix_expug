defmodule Example.TryController do
  use Example.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def compile(conn, %{"input" => input}) do
    try do
      output = Expug.to_eex!(input)
      conn
      |> json(%{ "output": output })
    rescue err in [Expug.Error] ->
      conn
      |> json(%{ "error": inspect(err) })
    end
  end
end
