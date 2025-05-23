# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Automationhub < Formula
  desc "Automation Environment to run Unity3D PlayMode tests on real devices for android support install adb and aapt: brew install --cask android-commandlinetools"
  homepage "https://github.com/fsuhrau/automationhub"
  version "1.0.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/fsuhrau/automationhub/releases/download/v1.0.4/automationhub_1.0.4_darwin_amd64.tar.gz"
      sha256 "324f84ec5e082a34b873cd616aebeb2fd4843743b93d4c884ec4d1b687b2a27e"

      def install
        bin.install "hub"
        bin.install "hubcli"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/fsuhrau/automationhub/releases/download/v1.0.4/automationhub_1.0.4_darwin_arm64.tar.gz"
      sha256 "6af7073da1784962b8094a672b30f1872b61be6adca06a5bc04b6c84f723f058"

      def install
        bin.install "hub"
        bin.install "hubcli"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fsuhrau/automationhub/releases/download/v1.0.4/automationhub_1.0.4_linux_amd64.tar.gz"
        sha256 "cf25208005b2d3de0ea03541b0c7b97f712cd3faaf875196629b3d7f77a3b724"

        def install
          bin.install "hub"
          bin.install "hubcli"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/fsuhrau/automationhub/releases/download/v1.0.4/automationhub_1.0.4_linux_arm64.tar.gz"
        sha256 "aec16bc53e5f8e71281deddc95630c8084a89cf5bd10aa5b19f6a79cbc2afbf1"

        def install
          bin.install "hub"
          bin.install "hubcli"
        end
      end
    end
  end

  def caveats
    <<~EOS
      hub configure # to get started
    EOS
  end
end
