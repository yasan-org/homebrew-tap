cask "kepko-sample" do
  os macos: "macos", linux: "linux"
  ext = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "1.8.3"
  sha256 arm:          "478d47c8ad2f2b51310a8922102a6feea334e70468474b13610e5509b2d018fa",
         x86_64_linux: "0c51682488bc2b89f58fb9e3d1fe7df5693dbf45659784595e8e25198e4e58bf"

  on_macos do
    depends_on arch: :arm64

    app "Kepko.app"

    caveats <<~EOS
      Kepko is currently ad-hoc signed and has not been notarized by Apple.
      macOS may require approval under System Settings -> Privacy & Security
      before the first launch.
    EOS
  end
  on_linux do
    depends_on arch: :x86_64

    binary "Kepko/bin/Kepko", target: "kepko-sample"
  end

  url "https://github.com/yasan-org/kepko/releases/download/#{version}/kepko-sample-#{os}-#{version}.#{ext}"
  name "Kepko"
  desc "Explore the Kepko design system for Compose Multiplatform"
  homepage "https://github.com/yasan-org/kepko"

  livecheck do
    url :url
    strategy :github_latest
  end
end
