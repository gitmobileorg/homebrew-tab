class CocoapodsAT1143 < Formula
  desc "CocoaPods is a dependency manager for Swift and Objective-C Cocoa projects."
  homepage "https://cocoapods.org"
  url "https://github.com/CocoaPods/CocoaPods/archive/refs/tags/1.14.3.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  depends_on "ruby"

  def install
    system "gem", "build", "cocoapods.gemspec"
    system "gem", "install", "cocoapods-#{version}.gem"
  end
end