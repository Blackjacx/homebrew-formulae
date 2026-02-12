class Asc < Formula
  desc "App Store Connect API access via Swift command-line tool"
  homepage "https://github.com/Blackjacx/Assist"
  url "https://github.com/Blackjacx/Assist/archive/refs/tags/0.10.1.tar.gz"
  sha256 "d685953ab619a1355e9c2dfc98a16ed2b4dd414f31c9a7032b6348afbc8c7246"
  license "MIT"
  head "https://github.com/Blackjacx/Assist.git", branch: "develop"

  depends_on xcode: ["16.0", :build]
  depends_on macos: :sequoia

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "bin/asc"
  end
end
