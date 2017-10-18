# phoenix_expug

> Phoenix integration for the Expug template engine

[Expug] is a HTML template engine for indented shorthand, inspired by Pug/Jade, Haml and Slim. This package integrates Expug with [Phoenix].

[Expug]: https://github.com/rstacruz/expug
[Phoenix]: http://phoenixframework.org/

[![Status](https://travis-ci.org/rstacruz/phoenix_expug.svg?branch=master)](https://travis-ci.org/rstacruz/phoenix_expug "See test builds")

## Installation

Add phoenix_expug to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:phoenix_expug, "~> 0.1"}]
end
```

Add the following to your `config/config.exs`:

```elixir
config :phoenix, :template_engines,
  pug: PhoenixExpug.Engine
```

Add the .pug extension to Phoenix livereload in `config/dev.exs`:

```elixir
config :hello_phoenix, HelloPhoenix.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex|pug)$}
      #                      ^^^^
    ]
  ]
```

## Thanks

**phoenix-expug** © 2016-2017, Rico Sta. Cruz. Released under the [MIT] License.<br>
Authored and maintained by Rico Sta. Cruz with help from contributors ([list][contributors]).

> [ricostacruz.com](http://ricostacruz.com) &nbsp;&middot;&nbsp;
> GitHub [@rstacruz](https://github.com/rstacruz) &nbsp;&middot;&nbsp;
> Twitter [@rstacruz](https://twitter.com/rstacruz)

[MIT]: http://mit-license.org/
[contributors]: http://github.com/rstacruz/phoenix_expug/contributors

[![](https://img.shields.io/github/followers/rstacruz.svg?style=social&label=@rstacruz)](https://github.com/rstacruz) &nbsp;
[![](https://img.shields.io/twitter/follow/rstacruz.svg?style=social&label=@rstacruz)](https://twitter.com/rstacruz)
