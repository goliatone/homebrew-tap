# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Envset < Formula
  desc "run commands in an environment defined using a ini configuration file."
  homepage "https://github.com/goliatone/go-envset"
  version "0.0.7"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/goliatone/go-envset/releases/download/v0.0.7/envset_0.0.7_darwin_arm64.tar.gz"
      sha256 "e9b1f91d350adfd6b4339f13425b55752496c7b881e8b9c7fc313a27cbe85f68"
    end
    if Hardware::CPU.intel?
      url "https://github.com/goliatone/go-envset/releases/download/v0.0.7/envset_0.0.7_darwin_x86_64.tar.gz"
      sha256 "2f362473d93029031272892e16536c871b1236b64a220a95f1e95cf0f9c16c7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/goliatone/go-envset/releases/download/v0.0.7/envset_0.0.7_linux_armv6.tar.gz"
      sha256 "fce2ec3565d93ef91fbdcc8e7ce79d26825ad4e0b3027044c02f063e31ce9707"
    end
    if Hardware::CPU.intel?
      url "https://github.com/goliatone/go-envset/releases/download/v0.0.7/envset_0.0.7_linux_x86_64.tar.gz"
      sha256 "1d2913c8f5cbc219c933bcb1ae6706278e5f0924547d9426d343e931ae86da0a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/goliatone/go-envset/releases/download/v0.0.7/envset_0.0.7_linux_arm64.tar.gz"
      sha256 "d24d40ca6772644636710c6904076654611bb5b4fd8432eca1a700f7bdae6c40"
    end
  end

  def install
    bin.install "envset"
  end

  test do
    system "#{bin}/envset -V"
  end
end
