class Sentriex < Formula
  desc "Merchant Public API client and integration skill installer"
  homepage "https://github.com/heaven-online/sentriex-agent-skills"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/heaven-online/sentriex-agent-skills/releases/download/v0.2.0/sentriex_v0.2.0_darwin_arm64.tar.gz"
      sha256 "a18db7fc1e5e01da320a9eea827d861e1211721b8b888fc5bb713bbe84fe8012"
    end

    on_intel do
      url "https://github.com/heaven-online/sentriex-agent-skills/releases/download/v0.2.0/sentriex_v0.2.0_darwin_amd64.tar.gz"
      sha256 "dfb7973c62e763271b132df3875c187e1b035ac932cb33651a8b020312a1762f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/heaven-online/sentriex-agent-skills/releases/download/v0.2.0/sentriex_v0.2.0_linux_arm64.tar.gz"
      sha256 "4a4b0212d574a4fa8402cf4c6a1e29380b9308ad098c141a9a2d69d03b792d80"
    end

    on_intel do
      url "https://github.com/heaven-online/sentriex-agent-skills/releases/download/v0.2.0/sentriex_v0.2.0_linux_amd64.tar.gz"
      sha256 "9531893d17e44aff55d901dadddaa8ca4feb261ea753eaecc08229691f3ca8d1"
    end
  end

  def install
    bin.install "sentriex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sentriex --version")
  end
end
