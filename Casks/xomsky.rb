cask "xomsky" do
  version "1.1.4"
  sha256 "1787061b74729c25564551ad2a7e76b79874c05124fec06a1b02eaba76fb65ab"

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
