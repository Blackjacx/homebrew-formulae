class Asc < Formula
  desc "App Store Connect API access via Swift command-line tool"
  homepage "https://github.com/Blackjacx/Assist"
  url "https://github.com/Blackjacx/Assist.git", tag: "0.1.0", revision: "0d18ca278bfbea930fb42d0550d83cf7f13f0445"
  license "MIT"
  head "https://github.com/Blackjacx/Assist.git", branch: "develop"

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
    system "#{bin}/asc" "import Foundation\n"
  end
end
