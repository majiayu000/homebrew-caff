cask "caff" do
  version "0.1.3"
  sha256 "8b30f6e62e0ffee907a2745c31e12d26dc7d9478ba840eaba89ba8d80d221f51"

  url "https://github.com/majiayu000/caff/releases/download/v#{version}/Caff-#{version}.zip"
  name "Caff"
  desc "Menu bar app that keeps the machine awake during long-running agent tasks"
  homepage "https://github.com/majiayu000/caff"

  depends_on macos: :ventura

  app "Caff.app"

  uninstall quit: "local.caff"

  zap trash: [
    "~/Library/Application Support/Caff",
    "~/Library/Preferences/local.caff.plist",
  ]
end
