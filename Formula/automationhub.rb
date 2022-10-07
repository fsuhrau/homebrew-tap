# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Automationhub < Formula
  desc "Automation Environment to run Unity3D PlayMode tests on real devices"
  homepage "https://github.com/fsuhrau/automationhub"
  version "0.1.2"

  depends_on "android-sdk"
  depends_on "android-platform-tools"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fsuhrau/automationhub/releases/download/v0.1.2/automationhub_0.1.2_darwin_arm64.tar.gz"
      sha256 "70d3c8e005cb1feedbf770be719662e0f2bbaab4f2b12104c0ca9d8ef8f38135"

      def install
        bin.install "hub"
        bin.install "hubcli"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/fsuhrau/automationhub/releases/download/v0.1.2/automationhub_0.1.2_darwin_amd64.tar.gz"
      sha256 "5208ca51c2be35313bf1d58acb85b40c434c3285a396ea0c1f2e039719cff442"

      def install
        bin.install "hub"
        bin.install "hubcli"
      end
    end
  end

  def caveats
    <<~EOS
      hub configure # to get started
    EOS
  end
end
