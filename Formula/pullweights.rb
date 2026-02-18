class Pullweights < Formula
  desc "CLI for PullWeights — the decentralized AI model registry"
  homepage "https://github.com/pullweights/cli"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pullweights/cli/releases/download/v#{version}/pullweights-darwin-arm64"
      sha256 "668e40db0f764e29809c46a0ffa3762b826fec5ec3b0a75b02c8143bd0923c7c"
    else
      url "https://github.com/pullweights/cli/releases/download/v#{version}/pullweights-darwin-amd64"
      sha256 "ec0a6565ce2c6bf2b86f10bd7c2fa7e9a20bfff2734be5535071317f04c98bde"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pullweights/cli/releases/download/v#{version}/pullweights-linux-arm64"
      sha256 "6b508aeae7cea41d9bff96de521d689e23183466317eba0a489664e7ff382d3a"
    else
      url "https://github.com/pullweights/cli/releases/download/v#{version}/pullweights-linux-amd64"
      sha256 "1858a1aa485bf86eda4d7eadd48dfa6e299c6992dba4fa3828636964bd4be20c"
    end
  end

  def install
    binary = Dir.glob("pullweights-*").first
    mv binary, "pullweights"
    bin.install "pullweights"
  end

  test do
    assert_match "pullweights", shell_output("#{bin}/pullweights --version")
  end
end
