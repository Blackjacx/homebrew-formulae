class Asc < Formula
  desc "App Store Connect API access via Swift command-line tool"
  homepage "https://github.com/Blackjacx/Assist"
  url "https://github.com/Blackjacx/Assist.git", tag: "0.4.2", revision: "f0548e8c7bf32d713938fb1b5e62fa9de48c090c"
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
