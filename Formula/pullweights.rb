class Pullweights < Formula
  desc "CLI for PullWeights — the decentralized AI model registry"
  homepage "https://github.com/pullweights/cli"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pullweights/cli/releases/download/v#{version}/pullweights-darwin-arm64"
      sha256 "1232f4970ec1ac2f5c2a7d3aa61a602c2c160364ab3dbc6ff94a741f8a733113"
    else
      url "https://github.com/pullweights/cli/releases/download/v#{version}/pullweights-darwin-amd64"
      sha256 "a854a218ea99b9ceca6942f9400bb67d077eaaf81a7a3a95d09e6bdf4b44f38a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pullweights/cli/releases/download/v#{version}/pullweights-linux-arm64"
      sha256 "84e5a5307de81f9a99838ca059e668885aa5142dad191ca6c704ccbc76859e90"
    else
      url "https://github.com/pullweights/cli/releases/download/v#{version}/pullweights-linux-amd64"
      sha256 "70ee7715d47ad667c043c9ecaa43329a9be8df6c37b40b52a04f353939adb2d4"
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
