# typed: false
# frozen_string_literal: true

# Rendered by the Rune Box release workflow; do not edit by hand.
class Runebox < Formula
  desc "Environment where your agent can roam freely but with receipts"
  homepage "https://github.com/Runeeward/RuneBox"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Runeeward/RuneBox/releases/download/v0.4.5/runebox_darwin_amd64.tar.gz"
      sha256 "3ac80a79fcefd4cc500cd479f8b77fe5e9f1347d2fa32077afbaf24c610f48df"
    end
    on_arm do
      url "https://github.com/Runeeward/RuneBox/releases/download/v0.4.5/runebox_darwin_arm64.tar.gz"
      sha256 "8e6ac79512124801c029a47a03470d57b864e0c9819041fd1deabe3955d9acd9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Runeeward/RuneBox/releases/download/v0.4.5/runebox_linux_amd64.tar.gz"
      sha256 "32171ec1de772a62966afc9e94167f8dde2aac6e9bea8731fa14fcdbb8a5861c"
    end
    on_arm do
      url "https://github.com/Runeeward/RuneBox/releases/download/v0.4.5/runebox_linux_arm64.tar.gz"
      sha256 "a7f708d7ce71f4b0c315932671a191703f37b34d74ae7d3733a4aa2708cadaab"
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
