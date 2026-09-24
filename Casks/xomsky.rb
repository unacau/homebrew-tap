cask "xomsky" do
  version "1.1.6"
  sha256 "68b53eff2896fc68199d49d7a81f5038d0bf3c72db1d0a01f91581a81fa9c4ac"

  url "https://github.com/unacau/mac-productivity-suite/releases/download/v#{version}/Xomsky.dmg"
  name "Xomsky"
  desc "Driverless Caps-Lock remapper & Chrome profile switcher in pure Swift 6"
  homepage "https://github.com/unacau/mac-productivity-suite"

  depends_on macos: :sonoma

  app "Xomsky.app"

  zap trash: [
    "~/Library/Application Support/com.almosteleven.xomsky",
    "~/Library/Caches/com.almosteleven.xomsky",
    "~/Library/Preferences/com.almosteleven.xomsky.plist",
  ]
end
