class AgentSwift < Formula
  desc "CLI for AI agents to control macOS apps via Accessibility API"
  homepage "https://github.com/beastoin/agent-swift"
  url "https://github.com/beastoin/agent-swift/releases/download/v0.13.1/agent-swift-0.13.1-macos-universal.tar.gz"
  sha256 "4dbb1794ce3562fb6101e350eb03948e56ad6694ff195c61c1ea6a76e4d8618f"
  version "0.13.1"
  license "MIT"

  depends_on :macos

  def install
    bin.install "agent-swift"
  end

  test do
    assert_match "0.13.1", shell_output("#{bin}/agent-swift --version")
  end
end
