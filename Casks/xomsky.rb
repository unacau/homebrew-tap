cask "xomsky" do
  version "1.1.5"
  sha256 "4aaa55fd871e493a9aaaa4a73e595f1c259f8c28d09812e13f8ba0322f16d540"

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
