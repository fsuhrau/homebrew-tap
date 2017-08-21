class Gopretty < Formula
  desc "Go Pretty a small beautifier for XCode builds similar to xcpretty"
  homepage "https://github.com/fsuhrau/gopretty"
  url "https://github.com/fsuhrau/gopretty/releases/download/v0.1.0/gopretty_0.1.0_darwin_amd64.tar.gz"
  version "0.1.0"
  sha256 "e997aed63ad28152396b2d3fe9bb6cb4789b95992771bc7345a4f68be8dd2250"

  def install
    bin.install "gopretty"
  end

  def caveats
    "xcodebuild -project 'testproject.xcodeproj' -configuration Release -target "test" | gopretty"
  end

  test do
    
  end
end
