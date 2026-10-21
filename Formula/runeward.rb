# typed: false
# frozen_string_literal: true

# Rendered by the Rune Box release workflow; do not edit by hand.
class Runeward < Formula
  desc "Rune Box: an environment where your agent can roam freely but with receipts"
  homepage "https://github.com/Runeeward/runeward"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Runeeward/runeward/releases/download/v0.4.1/runeward_darwin_amd64.tar.gz"
      sha256 "79fc278e01126a91b463e51f6252ab0406d0ca9bf6199a08d80ce3b68218cb38"
    end
    on_arm do
      url "https://github.com/Runeeward/runeward/releases/download/v0.4.1/runeward_darwin_arm64.tar.gz"
      sha256 "59a1050f3f83707df75e8c6f19f2d96a0980ef388c134060a1be23cca0ca02f4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Runeeward/runeward/releases/download/v0.4.1/runeward_linux_amd64.tar.gz"
      sha256 "c383d261108999018cdb43a01b5a8f26821d2a1151a950a18bb0f2529e1d423c"
    end
    on_arm do
      url "https://github.com/Runeeward/runeward/releases/download/v0.4.1/runeward_linux_arm64.tar.gz"
      sha256 "65e97771264b2d87f7c5e1e10eee626270d4e3edb4f7b66cddf6bb0dd7cfe732"
    end
  end

  def install
    bin.install "runeward"
  end

  test do
    system "#{bin}/runeward", "version"
  end
end
