class AgentSwift < Formula
  desc "CLI for AI agents to control macOS apps via Accessibility API"
  homepage "https://github.com/beastoin/agent-swift"
  url "https://github.com/beastoin/agent-swift/releases/download/v0.1.0/agent-swift-0.1.0-macos-universal.tar.gz"
  sha256 "PLACEHOLDER"
  version "0.1.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "agent-swift"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/agent-swift --version")
  end
end
