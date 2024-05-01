class CocoapodsAT1143 < Formula
    desc "Dependency manager for Cocoa projects"
    homepage "https://cocoapods.org/"
    url "https://github.com/CocoaPods/CocoaPods/archive/refs/tags/1.14.3.tar.gz"
    sha256 "de05766e5771e0cef7af89f73b0e42a1f1c52a76ce1288592cd9511bcd688a9e"
    license "MIT" 
  
    depends_on "ruby"
  
    def install
      system "gem", "build", "cocoapods.gemspec"
      system "gem", "install", "cocoapods-#{version}.gem"
    end
  end
