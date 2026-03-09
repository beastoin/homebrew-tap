class AgentSwift < Formula
  desc "CLI for AI agents to control macOS apps via Accessibility API"
  homepage "https://github.com/beastoin/agent-swift"
  url "https://github.com/beastoin/agent-swift/releases/download/v0.1.0/agent-swift-0.1.0-macos-universal.tar.gz"
  sha256 "5ea80631477223cb02f7bc347f1864ec82d323a3ec497c0e53eefffd5e270d26"
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
