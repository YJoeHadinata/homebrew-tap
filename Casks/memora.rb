cask "memora" do
  version "0.2.0"
  sha256 "1bea332cc9bd36d447376735c5fe1bc9cc3330215f28ce337299d0b1676ab00c"

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
