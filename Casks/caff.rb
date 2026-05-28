cask "caff" do
  version "0.1.1"
  sha256 "9f4634ef2b25a34e7df6534b628184feac8da8a06d8608fd2d06bf8da83701ed"

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
