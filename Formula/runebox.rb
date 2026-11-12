# typed: false
# frozen_string_literal: true

# Rendered by the Rune Box release workflow; do not edit by hand.
class Runebox < Formula
  desc "Environment where your agent can roam freely but with receipts"
  homepage "https://github.com/Runeeward/RuneBox"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Runeeward/RuneBox/releases/download/v0.4.4/runebox_darwin_amd64.tar.gz"
      sha256 "29ab45fcdc26ce05eb2329080a09ca989ce6dcd2e9888d53c3357b707e91a56c"
    end
    on_arm do
      url "https://github.com/Runeeward/RuneBox/releases/download/v0.4.4/runebox_darwin_arm64.tar.gz"
      sha256 "4c49a1a49ca16cd2242df313a2f013bd6ea446a2c50d497524107daaf7215ded"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Runeeward/RuneBox/releases/download/v0.4.4/runebox_linux_amd64.tar.gz"
      sha256 "64909043de50fc4614ce3887aed98828381f2d0e4bcb82228b78c40440948a7d"
    end
    on_arm do
      url "https://github.com/Runeeward/RuneBox/releases/download/v0.4.4/runebox_linux_arm64.tar.gz"
      sha256 "012ff31fc50741378faab0fc82c1215d0c8412db8688c9dbe372cdd4340b2b7d"
    end
  end

  def install
    bin.install "runebox"
    # The command was called runeward before v0.4.4; kept for one release.
    bin.install_symlink "runebox" => "runeward"
  end

  test do
    system "#{bin}/runebox", "version"
  end
end
