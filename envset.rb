# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Envset < Formula
  desc "run commands in an environment defined using a ini configuration file."
  homepage "https://github.com/goliatone/go-envset"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goliatone/go-envset/releases/download/v0.6.1/envset_0.6.1_darwin_arm64.tar.gz"
      sha256 "16710925938467e3b776df8d1657c37f69e548ff53346bc8f398b809d98ef675"

      def install
        bin.install "envset"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goliatone/go-envset/releases/download/v0.6.1/envset_0.6.1_darwin_x86_64.tar.gz"
      sha256 "6fc5e3dfb4629cd8a141645c4ccbcdadafaaecc8d138b0d75f7537414573f53d"

      def install
        bin.install "envset"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goliatone/go-envset/releases/download/v0.6.1/envset_0.6.1_linux_arm64.tar.gz"
      sha256 "5f2628c238540d036ca30440c0714fc3459e0309f946577013a6fb5fbf52afac"

      def install
        bin.install "envset"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goliatone/go-envset/releases/download/v0.6.1/envset_0.6.1_linux_x86_64.tar.gz"
      sha256 "450659a58c937d64888d8c754ed2090344def041d50c4a2e2a1ad71cae80baa6"

      def install
        bin.install "envset"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goliatone/go-envset/releases/download/v0.6.1/envset_0.6.1_linux_armv6.tar.gz"
      sha256 "afb389607d6261569d75d17a1378baceb821232dd84e2301fd93473a96b73407"

      def install
        bin.install "envset"
      end
    end
  end

  test do
    system "#{bin}/envset -V"
  end
end
