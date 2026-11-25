cask "toolkit-sample" do
  os macos: "macos", linux: "linux"
  ext = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "1.7.23"
  sha256 arm:          "5e2ae8f685841a45368b16db28883209fcdaa27c5bbfd827652dbe41e5e4363c",
         x86_64_linux: "451f65794aa94bc93114489e87eeda365ad8c15cc41c71baf5bb628d01828174"

  on_macos do
    depends_on arch: :arm64

    app "Toolkit.app"

    caveats <<~EOS
      Toolkit is currently ad-hoc signed and has not been notarized by Apple.
      macOS may require approval under System Settings -> Privacy & Security
      before the first launch.
    EOS
  end
  on_linux do
    depends_on arch: :x86_64

    binary "Toolkit/bin/Toolkit", target: "toolkit-sample"
  end

  url "https://github.com/yasan-org/toolkit/releases/download/#{version}/toolkit-sample-#{os}-#{version}.#{ext}"
  name "Toolkit"
  desc "Explore the Toolkit libraries for Kotlin Multiplatform"
  homepage "https://github.com/yasan-org/toolkit"

  livecheck do
    url :url
    strategy :github_latest
  end
end
