class Asc < Formula
  desc "App Store Connect API access via Swift command-line tool"
  homepage "https://github.com/Blackjacx/Assist"
  url "https://github.com/Blackjacx/Assist.git", tag: "0.0.11", revision: "30c306effb2bd4cd88e02f202660368d65c58649"
  license "MIT"

  depends_on xcode: [">13.1", :build]
  depends_on macos: [
    :catalina,
    :big_sur,
    :monterey,
  ]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/swift-syntax-highlight" "import Foundation\n"
  end
end
