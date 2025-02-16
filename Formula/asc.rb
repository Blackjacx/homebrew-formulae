class Asc < Formula
  desc "App Store Connect API access via Swift command-line tool"
  homepage "https://github.com/Blackjacx/Assist"
  url "https://github.com/Blackjacx/Assist.git", tag: "0.5.2", revision: "0670c46cf5f110b2ba88097d3e88008f13f97a93"
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
