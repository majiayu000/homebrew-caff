cask "caff" do
  version "0.1.2"
  sha256 "e896013e6b9f103c2d3a632b36768a14b4b158389af7120382be964a3fc93f53"

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
