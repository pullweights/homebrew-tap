class Pullweights < Formula
  desc "CLI for PullWeights — the decentralized AI model registry"
  homepage "https://github.com/pullweights/cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pullweights/cli/releases/download/v#{version}/pullweights-darwin-arm64"
      sha256 "f6a724f91bd944d2ffc047f7bbf5368f1d7a1becb8ac7e7136979f0db9c5c625"
    else
      url "https://github.com/pullweights/cli/releases/download/v#{version}/pullweights-darwin-amd64"
      sha256 "738a3172a667b7bbfa2b46f1d476ba813295f7093501293b4531262c99c0a56d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pullweights/cli/releases/download/v#{version}/pullweights-linux-arm64"
      sha256 "22a68febcddd6ef65a47385ca997e531b9d54dbe7226f25ee0573437ab7d838c"
    else
      url "https://github.com/pullweights/cli/releases/download/v#{version}/pullweights-linux-amd64"
      sha256 "20e7346b7b5595df83f391b49207e791f0ff1394ec37e3c367718eba361554f4"
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
