cask "candela" do
  version "0.1.0"
  sha256 "46496dadab54348b6b5419ec2d7ef54847e47e9db148a851c0c835d7b6d950c9"

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
