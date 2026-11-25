# typed: false
# frozen_string_literal: true

# Rendered by the Rune Box release workflow; do not edit by hand.
class Runebox < Formula
  desc "Environment where your agent can roam freely but with receipts"
  homepage "https://github.com/Runeeward/RuneBox"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Runeeward/RuneBox/releases/download/v0.4.6/runebox_darwin_amd64.tar.gz"
      sha256 "f708670869423573b00fdcd45638893ab20be9e6905a3f37da3f8bcc555c46b2"
    end
    on_arm do
      url "https://github.com/Runeeward/RuneBox/releases/download/v0.4.6/runebox_darwin_arm64.tar.gz"
      sha256 "68f5bf13589242535483d6cb86678e22ff7edfae0caeaecb60b11ac0c9a7f5d0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Runeeward/RuneBox/releases/download/v0.4.6/runebox_linux_amd64.tar.gz"
      sha256 "70a1036c456e3fbd15fcc20e4c62372d9ffe9caf3c567f8005ae02734fd991da"
    end
    on_arm do
      url "https://github.com/Runeeward/RuneBox/releases/download/v0.4.6/runebox_linux_arm64.tar.gz"
      sha256 "279876340b3076cc6c5b605b7a1cbee996b9c6abd7c3aa7d5c4c41279d659bf9"
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
