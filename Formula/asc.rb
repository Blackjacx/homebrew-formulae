class Asc < Formula
  desc "App Store Connect API access via Swift command-line tool"
  homepage "https://github.com/Blackjacx/Assist"
  url "https://github.com/Blackjacx/Assist.git", tag: "0.4.0", revision: "f89e16c329d1277ad2f3837cb4ee8087abc450c6"
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
