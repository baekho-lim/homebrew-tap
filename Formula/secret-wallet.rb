class SecretWallet < Formula
  desc "Keychain-based credential manager for AI agents"
  homepage "https://github.com/baekho-lim/secret-wallet"
  url "https://github.com/baekho-lim/secret-wallet/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "280f031beac7a656aecb4e7121e335ca5167305a6115c8a1be178b31a6746030"
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
