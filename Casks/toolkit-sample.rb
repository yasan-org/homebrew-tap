cask "toolkit-sample" do
  version "1.7.22"
  sha256 "51037c8ff74919b4d589aa8e19a3229cfb0d587be77e99942f98a34846dbdbfb"

  url "https://github.com/yasan-org/toolkit/releases/download/#{version}/toolkit-sample-macos-#{version}.dmg"
  name "Toolkit"
  desc "Explore the Toolkit libraries for Kotlin Multiplatform"
  homepage "https://github.com/yasan-org/toolkit"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Toolkit.app"

  caveats <<~EOS
    Toolkit is currently ad-hoc signed and has not been notarized by Apple.
    macOS may require approval under System Settings -> Privacy & Security
    before the first launch.
  EOS
end
