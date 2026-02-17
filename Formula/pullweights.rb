class Pullweights < Formula
  desc "CLI for PullWeights — the decentralized AI model registry"
  homepage "https://github.com/pullweights/cli"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pullweights/cli/releases/download/v#{version}/pullweights-darwin-arm64"
      sha256 "2eed9e56b47114cade8e925f33d8e0619f2c8401e3672d3306e2f9dec4055a45"
    else
      url "https://github.com/pullweights/cli/releases/download/v#{version}/pullweights-darwin-amd64"
      sha256 "948ebec35aed45404c06b9d8884f117441760d1499bd9bb51bfd77dfd17d1903"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pullweights/cli/releases/download/v#{version}/pullweights-linux-arm64"
      sha256 "6570d9ec363296620e4b3fb297f6e89c39ef1ef242b6571ae72de755c4bc2944"
    else
      url "https://github.com/pullweights/cli/releases/download/v#{version}/pullweights-linux-amd64"
      sha256 "f9945c1567f371035826561b456990abac66022a4fc928c1721be474a00901a9"
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
