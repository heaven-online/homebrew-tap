class Sentriex < Formula
  desc "Merchant Public API client and integration skill installer"
  homepage "https://github.com/heaven-online/sentriex-agent-skills"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/heaven-online/sentriex-agent-skills/releases/download/v0.1.0/sentriex_v0.1.0_darwin_arm64.tar.gz"
      sha256 "3f565c75894f5cfc20822933913236cab48d98cc11f7bed6c5e3b2c4eaa5e5dc"
    else
      url "https://github.com/heaven-online/sentriex-agent-skills/releases/download/v0.1.0/sentriex_v0.1.0_darwin_amd64.tar.gz"
      sha256 "6a1c69887c7fef28c37939babf4d470a1f4c231a491fce4239d7f06919e54c3a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/heaven-online/sentriex-agent-skills/releases/download/v0.1.0/sentriex_v0.1.0_linux_arm64.tar.gz"
      sha256 "2a9aeb15af5a482282b681f190c20cb2cb5ebd192f1af25129996b3a6daf0251"
    else
      url "https://github.com/heaven-online/sentriex-agent-skills/releases/download/v0.1.0/sentriex_v0.1.0_linux_amd64.tar.gz"
      sha256 "4cc49eb647b55ab4f82428bd9390372f88460c953386790baa911d1eb3e793cd"
    end
  end

  def install
    bin.install "sentriex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sentriex --version")
  end
end
