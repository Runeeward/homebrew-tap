# typed: false
# frozen_string_literal: true

# Rendered by the Rune Box release workflow; do not edit by hand.
class Runeward < Formula
  desc "Rune Box: an environment where your agent can roam freely but with receipts"
  homepage "https://github.com/Runeeward/runeward"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Runeeward/runeward/releases/download/v0.4.0/runeward_darwin_amd64.tar.gz"
      sha256 "5c8c22aaa58496980381ff06c6e3f4fa88a53620788d92a9d16ffbdc68d5d9a8"
    end
    on_arm do
      url "https://github.com/Runeeward/runeward/releases/download/v0.4.0/runeward_darwin_arm64.tar.gz"
      sha256 "7eab37422c4a708953855a7a046944dfecc15eac06df31298af10e3796d4678e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Runeeward/runeward/releases/download/v0.4.0/runeward_linux_amd64.tar.gz"
      sha256 "4864c9683e97f10e41fe99f2260402ca3700595887d4be58a4f050b524712d34"
    end
    on_arm do
      url "https://github.com/Runeeward/runeward/releases/download/v0.4.0/runeward_linux_arm64.tar.gz"
      sha256 "fdcc006d6ec1c562f31924156c885157c34b5913d8e1dcbe797bf5d1a49af2bc"
    end
  end

  def install
    bin.install "runeward"
  end

  test do
    system "#{bin}/runeward", "version"
  end
end
