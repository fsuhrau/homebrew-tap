class Gocat < Formula
  desc "gocat add coloring for logcat output"
  homepage "https://github.com/fsuhrau/gocat"
  url "https://github.com/fsuhrau/gocat/releases/download/v0.1.1/gocat_0.1.1_darwin_amd64.tar.gz"
  version "0.1.1"
  sha256 "96f0226fdcf254091fcf125d41bdf0bd8a75719355e4601261b61e5ab3b7dfcd"

  def install
    bin.install "gocat"
  end

  def caveats
    "adb logcat | gocat"
  end

  test do
    
  end
end
