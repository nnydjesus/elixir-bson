defmodule Bson.Mixfile do
  use Mix.Project

  def project do
    [ app: :bson,
      name: "bson",
      version: "0.4.4",
      elixir: "~> 1.2.5",
      description: "BSON implementation for Elixir",
      deps: deps(Mix.env),
  end

  # Configuration for the OTP application
  def application do
    []
  end

  # Returns the list of dependencies in the format:
  defp deps(:docs) do
    [
      {:ex_doc, ">= 0.0.0" },
      {:earmark, ">= 0.0.0"}
    ]
  end
  defp deps(_), do: []

  defp package do
    [ contributors: ["jerp"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/nnydjesus/elixir-bson.git",
        "Documentation" => "http://hexdocs.pm/bson/"
      } ]
  end
end
