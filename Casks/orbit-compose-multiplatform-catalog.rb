cask "orbit-compose-multiplatform-catalog" do
  version "0.40.4"
  sha256 "b5d001f551f31612942e892c58558c9aaab29e4541badd1bd47ae8d3768c7a3b"

  url "https://github.com/yasan-org/orbit-compose-multiplatform/releases/download/#{version}/orbit-catalog-macos-#{version}.dmg"
  name "Orbit Compose Multiplatform Catalog"
  desc "Browse Orbit components for Compose Multiplatform"
  homepage "https://github.com/yasan-org/orbit-compose-multiplatform"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Orbit Catalog.app"

  caveats <<~EOS
    Orbit Compose Multiplatform Catalog is currently ad-hoc signed and has not
    been notarized by Apple. macOS may require approval under System Settings ->
    Privacy & Security before the first launch.
  EOS
end
