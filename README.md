# Heaven Online Homebrew tap

Install the Sentriex merchant CLI after its release assets and formula are published:

```sh
brew install heaven-online/tap/sentriex
sentriex --version
sentriex skills install --agent claude-code
# Or: sentriex skills install --agent codex
```

Prebuilt binaries support macOS (Apple Silicon and Intel) and Linux (arm64 and amd64). Neither Go nor Node.js is required to use the CLI. See the [integration skill repository](https://github.com/heaven-online/sentriex-agent-skills) for configuration and the Public API workflow.

Formula checksums are generated from release archives built in the private development repository. Binary releases are hosted at [sentriex-agent-skills Releases](https://github.com/heaven-online/sentriex-agent-skills/releases).
