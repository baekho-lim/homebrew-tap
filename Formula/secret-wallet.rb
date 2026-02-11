class SecretWallet < Formula
  desc "Keychain-based credential manager for AI agents"
  homepage "https://github.com/baekho-lim/secret-wallet"
  url "https://github.com/baekho-lim/secret-wallet/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f165215ecfe45732fedbd06a225196c395ef936a0276a5b41a7b4c5496f7e09b"
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
