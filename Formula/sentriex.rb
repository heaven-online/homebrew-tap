class Sentriex < Formula
  desc "Merchant Public API client and integration skill installer"
  homepage "https://github.com/heaven-online/sentriex-agent-skills"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/heaven-online/sentriex-agent-skills/releases/download/v0.1.0/sentriex_v0.1.0_darwin_arm64.tar.gz"
      sha256 "b12dcce84afe72c52bb5c45daba3a943b76e1a4ddf0ab02a8dd14b782744f979"
    end

    on_intel do
      url "https://github.com/heaven-online/sentriex-agent-skills/releases/download/v0.1.0/sentriex_v0.1.0_darwin_amd64.tar.gz"
      sha256 "c2c79e2c1382d1defd219e35483547ac4e153ea2e7c2ed4e04b34e6a9c7e1461"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/heaven-online/sentriex-agent-skills/releases/download/v0.1.0/sentriex_v0.1.0_linux_arm64.tar.gz"
      sha256 "f4d17961a5583b53cdc7f8b1bd63122bfa0fcc972fc028de7c3423e14170a2e0"
    end

    on_intel do
      url "https://github.com/heaven-online/sentriex-agent-skills/releases/download/v0.1.0/sentriex_v0.1.0_linux_amd64.tar.gz"
      sha256 "b067f121b532626ec372565a445c2803e60cad383c8dc9b38d1eac13c0f436bb"
    end
  end

  def install
    bin.install "sentriex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sentriex --version")
  end
end
