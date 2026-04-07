class Kitak < Formula
  desc "Vanity address generator for Ethereum, Bitcoin, and Solana"
  homepage "https://github.com/katanacap/kitak"
  url "https://github.com/katanacap/kitak/archive/refs/tags/v3.1.3.tar.gz"
  sha256 "02437713112a9b07d011335c13c443b99d97c5ebcb0965fc446378c06cee4e8a"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kitak --version")
  end
end
