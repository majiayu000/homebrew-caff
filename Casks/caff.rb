cask "caff" do
  version "0.1.4"
  sha256 "03fa8ba2dc398514d91472b4b4e52bdc95164533e5ce7533d92c9846b2377c1f"

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
