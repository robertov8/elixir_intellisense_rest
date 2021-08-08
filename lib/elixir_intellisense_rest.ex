defmodule ElixirIntellisenseRest do
  alias ElixirIntellisenseRest.RequestHandler

  defdelegate handle_request(params), to: RequestHandler, as: :call
end
