class Asc < Formula
  desc "App Store Connect API access via Swift command-line tool"
  homepage "https://github.com/Blackjacx/Assist"
  url "https://github.com/Blackjacx/Assist.git", tag: "0.5.1", revision: "65a7592e2953373539fab1301d2ce7a8d2a0a238"
  license "MIT"
  head "https://github.com/Blackjacx/Assist.git", branch: "develop"

  depends_on xcode: ["15.0", :build]
  depends_on macos: :ventura

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "bin/asc"
  end
end
