cask "toolkit-sample" do
  version "1.7.21"
  sha256 "438097c82ae39b416cb0fe1c2d7be7ee79f321b2a8b2a23bbbb952104014923d"

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
