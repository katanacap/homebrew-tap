class Kitak < Formula
  desc "Vanity address generator for Ethereum, Bitcoin, and Solana"
  homepage "https://github.com/katanacap/kitak"
  url "https://github.com/katanacap/kitak/archive/refs/tags/v3.2.1.tar.gz"
  sha256 "6df806804150564926b23db7b140e428953749ffa25fcd0b0407836e9ea1b649"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kitak --version")
  end
end
