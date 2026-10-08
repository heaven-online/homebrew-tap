class Sentriex < Formula
  desc "Merchant Public API client and integration skill installer"
  homepage "https://github.com/heaven-online/sentriex-agent-skills"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/heaven-online/sentriex-agent-skills/releases/download/v0.1.0/sentriex_v0.1.0_darwin_arm64.tar.gz"
      sha256 "65e3ae2afeeb5921cbc035a93a8cdc93d5f99eee8cdf86d8d3363a9c3aaa1607"
    end

    on_intel do
      url "https://github.com/heaven-online/sentriex-agent-skills/releases/download/v0.1.0/sentriex_v0.1.0_darwin_amd64.tar.gz"
      sha256 "4bce9f031e67b3a2a604df3c4bf34a56865657288005fb678718583b75a3839e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/heaven-online/sentriex-agent-skills/releases/download/v0.1.0/sentriex_v0.1.0_linux_arm64.tar.gz"
      sha256 "212cf197774a19aebaecfe37fa5e75655f8edf26185d41bda8cc3ac92f381f1e"
    end

    on_intel do
      url "https://github.com/heaven-online/sentriex-agent-skills/releases/download/v0.1.0/sentriex_v0.1.0_linux_amd64.tar.gz"
      sha256 "644d84e4c6d83ba3fae238d20285b90095f05502a86453d515d6b2a29ef6bfc8"
    end
  end

  def install
    bin.install "sentriex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sentriex --version")
  end
end
