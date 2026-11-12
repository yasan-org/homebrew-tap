cask "kepko-sample" do
  version "1.8.2"
  sha256 "5ea8000e7e038358313a1119b944584396d96b21b9ebad62480dda83ea26729e"

  url "https://github.com/yasan-org/kepko/releases/download/#{version}/kepko-sample-macos-#{version}.dmg"
  name "Kepko"
  desc "Explore the Kepko design system for Compose Multiplatform"
  homepage "https://github.com/yasan-org/kepko"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Kepko.app"

  caveats <<~EOS
    Kepko is currently ad-hoc signed and has not been notarized by Apple.
    macOS may require approval under System Settings -> Privacy & Security
    before the first launch.
  EOS
end
