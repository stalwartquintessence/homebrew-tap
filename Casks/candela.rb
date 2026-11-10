cask "candela" do
  version "0.2.0"
  sha256 "c0e70d883b0f60bfb3ee7a984bff5314ef05cd2e5745759680a940780a43347a"

  url "https://github.com/stalwartquintessence/candela/releases/download/v#{version}/Candela-#{version}.dmg"
  name "Candela"
  desc "Brightness, contrast and picture mode control for external displays"
  homepage "https://github.com/stalwartquintessence/candela"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Candela.app"
  binary "#{appdir}/Candela.app/Contents/MacOS/candelactl"

  zap trash: [
    "~/Library/Caches/io.github.stalwartquintessence.Candela",
    "~/Library/HTTPStorages/io.github.stalwartquintessence.Candela",
    "~/Library/Preferences/io.github.stalwartquintessence.Candela.plist",
  ]
end
