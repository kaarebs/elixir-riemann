defmodule Riemann.Mixfile do
  use Mix.Project

  @version "0.0.11"

  def project do
    [app: :riemann,
     version: @version,
     elixir: "~> 1.0",
     deps: deps,
     aliases: [test: "test --no-start"],
     description: "A client for the Riemann event stream processor",
     package: package
    ]
  end

  def application do
    [
      mod: { Riemann, [] },
      applications: [:logger, :exprotobuf, :honeydew, :gpb]
    ]
  end

  defp deps do
    [
     {:exprotobuf, "~> 0.11.0"},
     {:honeydew, "== 0.0.7"}
    ]
  end

  defp package do
    [maintainers: ["Michael Shapiro"],
     licenses: ["MIT"],
     links: %{"GitHub": "https://github.com/koudelka/elixir-riemann",
              "Riemann": "http://riemann.io"}]
  end
end
