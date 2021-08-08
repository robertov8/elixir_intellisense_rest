defmodule ElixirIntellisenseRestWeb.RequestHandlerView do
  use ElixirIntellisenseRestWeb, :view

  def render("success.json", %{message: message}), do: get_message(message, true)
  def render("error.json", %{message: message}), do: get_message(message, false)

  defp get_message(message, status) do
    %{
      status: status,
      size: get_message_size(message),
      data: message
    }
  end

  defp get_message_size(message) when is_list(message), do: Enum.count(message)
  defp get_message_size(_message), do: 1
end
