class Asc < Formula
  desc "App Store Connect API access via Swift command-line tool"
  homepage "https://github.com/Blackjacx/Assist"
  url "https://github.com/Blackjacx/Assist/archive/refs/tags/0.8.1.tar.gz"
  sha256 "ebc7ab1b230caf1c6ad5cd4e3bec384bd9cb6393"
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
