class AgentSwift < Formula
  desc "CLI for AI agents to control macOS apps via Accessibility API"
  homepage "https://github.com/beastoin/agent-swift"
  url "https://github.com/beastoin/agent-swift/releases/download/v0.2.1/agent-swift-0.2.1-macos-universal.tar.gz"
  sha256 "55ca515b39d6a20389707fd733a11cba5b55eff63ca8cf90e4fda47ee5c52ace"
  version "0.2.1"
  license "MIT"

  depends_on :macos

  def install
    bin.install "agent-swift"
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/agent-swift --version")
  end
end
