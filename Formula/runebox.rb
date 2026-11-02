# typed: false
# frozen_string_literal: true

# Rendered by the Rune Box release workflow; do not edit by hand.
class Runebox < Formula
  desc "Environment where your agent can roam freely but with receipts"
  homepage "https://github.com/Runeeward/RuneBox"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Runeeward/RuneBox/releases/download/v0.4.3/runeward_darwin_amd64.tar.gz"
      sha256 "7414a31ed0c54328678b47ce2d18c279f5276aaa6f0c0141929d04e68624d43e"
    end
    on_arm do
      url "https://github.com/Runeeward/RuneBox/releases/download/v0.4.3/runeward_darwin_arm64.tar.gz"
      sha256 "e77624911b18f79559611605cca7ebe5bb0fad23356e7d1e2166143a77b761da"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Runeeward/RuneBox/releases/download/v0.4.3/runeward_linux_amd64.tar.gz"
      sha256 "6035e6b3efc940857a9d04106e77f299178919997ae011d9f0162fd0916e416a"
    end
    on_arm do
      url "https://github.com/Runeeward/RuneBox/releases/download/v0.4.3/runeward_linux_arm64.tar.gz"
      sha256 "cbb6b88ce24caee2237fdacea1d53a51108a083df1a8d80402685c4fb652ac25"
    end
  end

  def install
    bin.install "runeward"
  end

  test do
    system "#{bin}/runeward", "version"
  end
end
