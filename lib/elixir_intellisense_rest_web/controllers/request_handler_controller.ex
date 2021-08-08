defmodule ElixirIntellisenseRestWeb.RequestHandlerController do
  use ElixirIntellisenseRestWeb, :controller

  def index(conn, _params) do
    {:error, "send data via post"}
    |> handle_response(conn)
  end

  def handle_request(conn, params) do
    params
    |> ElixirIntellisenseRest.handle_request()
    |> handle_response(conn)
  end

  defp handle_response({:ok, result}, conn) do
    conn
    |> put_status(:ok)
    |> render("success.json", message: result)
  end

  defp handle_response({:error, reason}, conn) do
    conn
    |> put_status(:bad_request)
    |> render("error.json", message: reason)
  end
end
