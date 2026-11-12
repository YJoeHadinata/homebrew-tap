cask "memora" do
  version "0.3.0"
  sha256 "c39e92d7c0f8bc2d81e3c6c60c135a48e1114279326475c16280917f6447f0c7"

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
