cask "caff" do
  version "0.1.0"
  sha256 "cbdf0d210f5045809960ce28ac8afcde4c8d2f79caff2bee260a89acec488f90"

  url "https://github.com/majiayu000/caff/releases/download/v#{version}/Caff-#{version}.zip"
  name "Caff"
  desc "Menu bar app that keeps macOS awake during long-running agent tasks"
  homepage "https://github.com/majiayu000/caff"

  depends_on macos: ">= :ventura"

  app "Caff.app"

  uninstall quit: "local.caff"

  zap trash: [
    "~/Library/Application Support/Caff",
    "~/Library/Preferences/local.caff.plist",
  ]
end
