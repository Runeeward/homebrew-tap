# typed: false
# frozen_string_literal: true

# Rendered by the Rune Box release workflow; do not edit by hand.
class Runebox < Formula
  desc "Environment where your agent can roam freely but with receipts"
  homepage "https://github.com/Runeeward/RuneBox"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Runeeward/RuneBox/releases/download/v0.4.2/runeward_darwin_amd64.tar.gz"
      sha256 "936268e8952d23ccfa9bcb1c3e66a59725f10adcda8f17fba2591d282bc4a7d8"
    end
    on_arm do
      url "https://github.com/Runeeward/RuneBox/releases/download/v0.4.2/runeward_darwin_arm64.tar.gz"
      sha256 "ee73a1ad25c2ce2858affe8f0b51b6aa05d27a7ae27c40b5c792fd1c9943b08c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Runeeward/RuneBox/releases/download/v0.4.2/runeward_linux_amd64.tar.gz"
      sha256 "c96f0b683d50503a5f4c8f263f20d051f6d26dce3b657e6fee3638490c55ebaa"
    end
    on_arm do
      url "https://github.com/Runeeward/RuneBox/releases/download/v0.4.2/runeward_linux_arm64.tar.gz"
      sha256 "6f7d3c0cc568bfe1087b9b891fa2dc883b7a65e6ff1d6bc60ab3756ea0c2939e"
    end
  end

  def install
    bin.install "runeward"
  end

  test do
    system "#{bin}/runeward", "version"
  end
end
