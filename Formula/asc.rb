class Asc < Formula
  desc "App Store Connect API access via Swift command-line tool"
  homepage "https://github.com/Blackjacx/Assist"
  url "https://github.com/Blackjacx/Assist.git", tag: "0.4.1", revision: "f7cd8d7fbf2c27157caacc862b10254170f7cb4a"
  license "MIT"
  head "https://github.com/Blackjacx/Assist.git", branch: "develop"

  depends_on xcode: ["13.1", :build]
  depends_on macos: :monterey

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/asc"
  end
end
