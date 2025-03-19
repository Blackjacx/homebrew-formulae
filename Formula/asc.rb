class Asc < Formula
  desc "App Store Connect API access via Swift command-line tool"
  homepage "https://github.com/Blackjacx/Assist"
  url "https://github.com/Blackjacx/Assist/archive/refs/tags/0.7.0.tar.gz"
  sha256 "0a58ee22cb116352d1c5a2cdf0dcf27d1f8b36de27ea0445fbee35a6be4986a6"
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
