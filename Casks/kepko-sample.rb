cask "kepko-sample" do
  version "1.8.1"
  sha256 "c878ce9cc4efab57f0eac100ea7e840d7ce7215d1e99211b9abe5de5fbd87ce9"

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
