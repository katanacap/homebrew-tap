class Kitak < Formula
  desc "Vanity address generator for Ethereum, Bitcoin, and Solana"
  homepage "https://github.com/katanacap/kitak"
  url "https://github.com/katanacap/kitak/archive/refs/tags/v3.2.0.tar.gz"
  sha256 "78a154131c8285b9c79f61603de69b226cc1aad702800d835aeab5f578fd52d2"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kitak --version")
  end
end
