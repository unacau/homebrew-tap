cask "xomsky" do
  version "1.1.7"
  sha256 "c7377502650641fd8b57e53de259236c7303170ecfabb400de4a135b96232f40"

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
