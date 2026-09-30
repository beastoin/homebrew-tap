class AgentSwift < Formula
  desc "CLI for AI agents to control macOS apps via Accessibility API"
  homepage "https://github.com/beastoin/agent-swift"
  url "https://github.com/beastoin/agent-swift/releases/download/v0.12.0/agent-swift-0.12.0-macos-universal.tar.gz"
  sha256 "73a6c5c826b9d43b67efe5f73a341c954834cda40c50467815809d4e6c9b925d"
  version "0.12.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "agent-swift"
  end

  test do
    assert_match "0.12.0", shell_output("#{bin}/agent-swift --version")
  end
end
