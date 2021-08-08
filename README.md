# ElixirIntellisenseRest

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).


## Servidor de integração
Tentativa de criar um servidor para desacoplar o autocomplete e todas as ferramentas de análise de código do elixir [(elixir-ls)](https://marketplace.visualstudio.com/items?itemName=JakeBecker.elixir-ls). objetivo é tentar melhorar o autocomplete das ferramentas da jetbrains.

### POST - http://localhost:4000/api
* request
```json
{
    "request": "suggestions",
    "payload": {
        "buffer": "\ndefmodule MyModule do\n    alias List, as: MyList\n    MyList.flatten(par0,\nend\n",
        "line": 3,
        "column": 23
    }
}
```

* response
```json
{
    "data": [
        {
            "metadata": {},
            "name": "Chars",
            "subtype": "protocol",
            "summary": "The `List.Chars` protocol is responsible for\nconverting a structure to a charlist (only if applicable).",
            "type": "module"
        },
        {
            "args": "atom",
            "args_list": [
                "atom"
            ],
            "arity": 1,
            "def_arity": 1,
            "metadata": {
                "builtin": true
            },
            "name": "__info__",
            "origin": "List",
            "snippet": null,
            "spec": "@spec __info__(:attributes) :: keyword()\n@spec __info__(:compile) :: [term()]\n@spec __info__(:functions) :: [{atom, non_neg_integer}]\n@spec __info__(:macros) :: [{atom, non_neg_integer}]\n@spec __info__(:md5) :: binary()\n@spec __info__(:module) :: module()",
            "summary": "Built-in function",
            "type": "function",
            "visibility": "public"
        },
        ...
    ],
    "size": 44,
    "status": true
}
```

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
