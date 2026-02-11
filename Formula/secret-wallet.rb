class SecretWallet < Formula
  desc "Keychain-based credential manager for AI agents"
  homepage "https://github.com/baekho-lim/secret-wallet"
  url "https://github.com/baekho-lim/secret-wallet/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5651619dcd7145b82550e67a21a54d0244eee7876463e4c50e6ae31e47b2f05a"
  license "MIT"

  depends_on :macos => :monterey

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/secret-wallet"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/secret-wallet --version")
  end
end
