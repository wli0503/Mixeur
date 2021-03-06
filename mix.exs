defmodule Mixeur.Mixfile do
  use Mix.Project

  def project do
    [
      app: :mixeur,
      version: "0.1.0",
      elixir: "~> 1.5",
      package: package(),
      description: description(),
      source_url: "https://github.com/wli0503/Mixeur",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  defp package() do
    [
      maintainers: ["Wen Li"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://hex.pm/docs/publish"}
    ]
  end

  defp description() do
    "Mixin for Elixir"
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
	{:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end
end
