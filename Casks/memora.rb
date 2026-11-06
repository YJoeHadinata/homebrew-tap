cask "memora" do
  version "0.1.0"
  sha256 "984d5115d166a0ddaa29c7919cb508ced7af2c50fc24261871aa02b8dd35e947"

  url "https://github.com/YJoeHadinata/memora/releases/download/v#{version}/Memora-#{version}.dmg"
  name "Memora"
  desc "Native macOS memory telemetry, process energy monitor, and storage optimizer"
  homepage "https://github.com/YJoeHadinata/memora"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Memora.app"

  zap trash: [
    "~/Library/Preferences/com.memora.monitor.plist",
    "~/Library/Saved Application State/com.memora.monitor.savedState",
  ]
end
