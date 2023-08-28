class Asc < Formula
  desc "App Store Connect API access via Swift command-line tool"
  homepage "https://github.com/Blackjacx/Assist"
  url "https://github.com/Blackjacx/Assist.git", tag: "0.5.0", revision: "a153cc61a8b96f33ab934a47688ca5c222bc1b43"
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
