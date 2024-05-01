class CocoapodsAT1143 < Formula
  desc "Dependency manager for Cocoa projects"
  homepage "https://cocoapods.org/"
  url "https://github.com/CocoaPods/CocoaPods/archive/refs/tags/1.14.3.tar.gz"
  sha256 "de05766e5771e0cef7af89f73b0e42a1f1c52a76ce1288592cd9511bcd688a9e"
  license "MIT"

  depends_on "pkg-config" => :build
  depends_on "ruby"
  uses_from_macos "libffi", since: :catalina
  
  def install
    system "gem", "build", "cocoapods.gemspec"
    system "gem", "install", "cocoapods-1.14.3.gem"
    # Other executables don't work currently.
    bin.install libexec/"bin/pod", libexec/"bin/xcodeproj"
  end
end
