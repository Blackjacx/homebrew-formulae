class Asc < Formula
  desc "App Store Connect API access via Swift command-line tool"
  homepage "https://github.com/Blackjacx/Assist"
  url "https://github.com/Blackjacx/Assist.git", tag: "0.3.0", revision: "2174f2d457fe8a93cbaca0fcdab05297c1326841"
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
