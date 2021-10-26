# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Envset < Formula
  desc "run commands in an environment defined using a ini configuration file."
  homepage "https://github.com/goliatone/go-envset"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goliatone/go-envset/releases/download/v0.1.0/envset_0.1.0_darwin_arm64.tar.gz"
      sha256 "3908652cb076d93eb528b46e6d7f539754ba6f98630dff5709a62854d033052b"

      def install
        bin.install "envset"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goliatone/go-envset/releases/download/v0.1.0/envset_0.1.0_darwin_x86_64.tar.gz"
      sha256 "c71701e375d35a9ef9125992cf2e9a33e914e5ed78fc4e35661d0788c9cb4de3"

      def install
        bin.install "envset"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goliatone/go-envset/releases/download/v0.1.0/envset_0.1.0_linux_armv6.tar.gz"
      sha256 "d1480e050200c85ff6d1c8c004ac12cbc325d141f7bae0fd9c6d84b55e7c2f4e"

      def install
        bin.install "envset"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goliatone/go-envset/releases/download/v0.1.0/envset_0.1.0_linux_arm64.tar.gz"
      sha256 "2e9b4454fc36bbf85a312d281f4617aedd6f8b04eaf5757b52c02511ad88b2f6"

      def install
        bin.install "envset"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/goliatone/go-envset/releases/download/v0.1.0/envset_0.1.0_linux_x86_64.tar.gz"
      sha256 "112ad38e0d87c80561a4a6e3790a054b38ab990c09dcf371905cb92d95915e3c"

      def install
        bin.install "envset"
      end
    end
  end

  test do
    system "#{bin}/envset -V"
  end
end
