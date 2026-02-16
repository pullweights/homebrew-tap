class Pullweights < Formula
  desc "CLI for PullWeights — the decentralized AI model registry"
  homepage "https://github.com/pullweights/cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pullweights/cli/releases/download/v#{version}/pullweights-darwin-arm64"
      sha256 "191b3bc5c25bde43d1b71ad805003ce90fb1749fe15879eedf1a9ed561b727cb"
    else
      url "https://github.com/pullweights/cli/releases/download/v#{version}/pullweights-darwin-amd64"
      sha256 "d7b692b9f1005c8ff2bc75ae92e3d69bf2e1204cf27fe92a6a091d4a234420af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pullweights/cli/releases/download/v#{version}/pullweights-linux-arm64"
      sha256 "9d379e4b180057a91785519a70c8f1698f795fc7ae63bf730cf1c9f4cb6fddf0"
    else
      url "https://github.com/pullweights/cli/releases/download/v#{version}/pullweights-linux-amd64"
      sha256 "8cb6eefff49d9b9d53a20d7561c27a04b686b9810a2b32cec9a8d11812d6abe9"
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
