FROM elixir
WORKDIR /app

COPY app/. .
RUN mix local.hex --force \
		&& mix local.rebar --force \
		&& mix deps.get \
		&& mix compile

ENV MIX_ENV=prod

ENTRYPOINT ["mix", "phx.server"]
