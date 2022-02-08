# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lgr < Formula
  desc "pretty output for terminal scripts."
  homepage "https://github.com/goliatone/lgr"
  version "0.0.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goliatone/lgr/releases/download/v0.0.9/lgr_0.0.9_darwin_arm64.tar.gz"
      sha256 "3e05457c4e9de8a1a26bae93d2584fef38aa8b50e8af5d15841de4c90a2c015f"

      def install
        bin.install "lgr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goliatone/lgr/releases/download/v0.0.9/lgr_0.0.9_darwin_x86_64.tar.gz"
      sha256 "83cdd4dc68d8576078539b51749100a6e853490a9c3a6e91209b068cf2a5ad1e"

      def install
        bin.install "lgr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goliatone/lgr/releases/download/v0.0.9/lgr_0.0.9_linux_arm64.tar.gz"
      sha256 "69ee8d09eb4633bee66f40029f2b1283e159495bc589530866cb3fdb589fbfd3"

      def install
        bin.install "lgr"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goliatone/lgr/releases/download/v0.0.9/lgr_0.0.9_linux_armv6.tar.gz"
      sha256 "bf7893fe7dd4aa5f9b96564f1d855ff9578bcae0d1edf1766aa4405f9fb874e6"

      def install
        bin.install "lgr"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goliatone/lgr/releases/download/v0.0.9/lgr_0.0.9_linux_x86_64.tar.gz"
      sha256 "9a6914b54ab705727611a7f7b8702996020ad3bae24a3a2493865d96794e627b"

      def install
        bin.install "lgr"
      end
    end
  end

  test do
    system "#{bin}/lgr -V"
  end
end
