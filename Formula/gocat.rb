# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gocat < Formula
  desc "gocat add coloring for logcat output"
  homepage "https://github.com/fsuhrau/gocat"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fsuhrau/gocat/releases/download/v0.1.2/gocat_0.1.2_darwin_arm64.tar.gz"
      sha256 "36b5d1e8b327f3be242832391190d3d4b3fd9cf1bd0a075cca4cbf9c3bd22a72"

      def install
        bin.install "gocat"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fsuhrau/gocat/releases/download/v0.1.2/gocat_0.1.2_darwin_amd64.tar.gz"
      sha256 "abcfc7c663c325ecabca0830ddf9a0cf66e15429504daecf339440ab07f8d926"

      def install
        bin.install "gocat"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/fsuhrau/gocat/releases/download/v0.1.2/gocat_0.1.2_linux_arm64.tar.gz"
      sha256 "b5043c907ed049b50695078c380d848fa84d9d3f3f90ba8fcc2ad4e560fa8399"

      def install
        bin.install "gocat"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fsuhrau/gocat/releases/download/v0.1.2/gocat_0.1.2_linux_amd64.tar.gz"
      sha256 "82394719fb8a6af6567df474bd3ef5fda6e8f15ad340173a2af16f3a5beb456d"

      def install
        bin.install "gocat"
      end
    end
  end

  def caveats; <<~EOS
    adb logcat | gocat -tag com.yourcompany.appid -filter Networking
  EOS
  end
end
