class Gocat < Formula
  desc "gocat add coloring for logcat output"
  homepage "https://github.com/fsuhrau/gocat"
  url "https://github.com/fsuhrau/gocat/releases/download/v0.1.0/gocat_0.1.0_darwin_amd64.tar.gz"
  version "0.1.0"
  sha256 "0caf11efb1ed03a935222568684d91f1f114285fa7d7f75c7ad67a3e61b592b4"

  def install
    bin.install "gocat"
  end

  def caveats
    "adb logcat | gocat"
  end

  test do
    
  end
end
