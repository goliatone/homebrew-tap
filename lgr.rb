# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lgr < Formula
  desc "pretty output for terminal scripts."
  homepage "https://github.com/goliatone/lgr"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/goliatone/lgr/releases/download/v0.0.2/lgr_0.0.2_darwin_x86_64.tar.gz"
      sha256 "c0d28cb2d8f48af06b705635d62fc524fc245ae992d055d223640b72e0748c5b"

      def install
        bin.install "lgr"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/goliatone/lgr/releases/download/v0.0.2/lgr_0.0.2_darwin_arm64.tar.gz"
      sha256 "86595a9ac5b4841de6874dd62e9a4754ff77d775bc87fae5e4cd5c8c1d7967fe"

      def install
        bin.install "lgr"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/goliatone/lgr/releases/download/v0.0.2/lgr_0.0.2_linux_x86_64.tar.gz"
      sha256 "9dc58969cb6d6a421d3312657dfd5899e81ed34c18b742169cbb6b988bceffef"

      def install
        bin.install "lgr"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goliatone/lgr/releases/download/v0.0.2/lgr_0.0.2_linux_armv6.tar.gz"
      sha256 "91a798caf8a3226e31555f3ca8cd7bc77dcd8dfa4a194d0999cc66bf8764bf56"

      def install
        bin.install "lgr"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goliatone/lgr/releases/download/v0.0.2/lgr_0.0.2_linux_arm64.tar.gz"
      sha256 "caca173f053559dde17352208b09d9ce330162699a12517c3bee2260d7cd731f"

      def install
        bin.install "lgr"
      end
    end
  end

  test do
    system "#{bin}/lgr -V"
  end
end
