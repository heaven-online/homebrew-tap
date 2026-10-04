class Sentriex < Formula
  desc "Merchant Public API client and integration skill installer"
  homepage "https://github.com/heaven-online/sentriex-agent-skills"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heaven-online/sentriex-agent-skills/releases/download/v0.1.0/sentriex_v0.1.0_darwin_arm64.tar.gz"
      sha256 "dbf332252746ad28f2ff6b788419b9f0e095ee7ddb2fbac41af50d6d8e658150"
    else
      url "https://github.com/heaven-online/sentriex-agent-skills/releases/download/v0.1.0/sentriex_v0.1.0_darwin_amd64.tar.gz"
      sha256 "2b5f57bd4236c8e1d8f75901c242535901ebd4664a7c13afb874048e2a9fe467"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/heaven-online/sentriex-agent-skills/releases/download/v0.1.0/sentriex_v0.1.0_linux_arm64.tar.gz"
      sha256 "a80830da4ebecf79ee735223b91f2caf4d0eb563f729ea8097c1187ebd78835d"
    else
      url "https://github.com/heaven-online/sentriex-agent-skills/releases/download/v0.1.0/sentriex_v0.1.0_linux_amd64.tar.gz"
      sha256 "3336320bed1cb12f00d2387403f2f493a53d7ac345f4151c5e71bedf0b55f53a"
    end
  end

  def install
    bin.install "sentriex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sentriex --version")
  end
end
