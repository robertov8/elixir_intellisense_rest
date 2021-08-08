defmodule ElixirIntellisenseRest.RequestHandler do
  def call(%{
        "request" => request,
        "payload" => %{"buffer" => buffer, "line" => line, "column" => column}
      }) do
    code_format =
      buffer
      |> String.replace("\\n", "\n")
      |> String.replace(~r/^\n/, "")

    result =
      ElixirSense.Server.RequestHandler.handle_request(request, %{
        "buffer" => code_format,
        "line" => get_int_param(line),
        "column" => get_int_param(column)
      })

    {:ok, result}
  end

  def call(_) do
    {:error}
  end

  defp get_int_param(param) do
    case param do
      data when is_binary(param) -> String.to_integer(data)
      data when is_number(data) -> data
      _ -> raise("Invalid param")
    end
  end
end
