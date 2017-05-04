defmodule CPS.Mixfile do
  use Mix.Project

  def project do
    [app: :cps,
     version: "0.4.0",
     description: "CPS Feed Server 0.4 for KVS",
     package: package,
     deps: deps]
  end

  def application do
    [mod: {:cps, []}]
  end

  defp package do
    [files: ["include", "src", "LICENSE", "README.md", "rebar.config"],
     licenses: ["MIT"],
     maintainers: ["Andy Martemyanov"],
     name: :cps,
     links: %{"GitHub" => "https://github.com/synrc/cps"}]
  end

  defp deps do
     [{:ex_doc, ">= 0.0.0", only: :dev}]
  end
end
