cask "kepko-sample" do
  version "1.8.0"
  sha256 "c662e1d0cb38a39bca8773d1c76692c17888226b995c0ae948e94e0bc51efe17"

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
