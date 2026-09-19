class AgentSwift < Formula
  desc "CLI for AI agents to control macOS apps via Accessibility API"
  homepage "https://github.com/beastoin/agent-swift"
  url "https://github.com/beastoin/agent-swift/releases/download/v0.11.0/agent-swift-0.11.0-macos-universal.tar.gz"
  sha256 "6952a04d8b79777f5c04c9f3217aba36dc8df4443fbf16857635f1ecd9bc152d"
  version "0.11.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "agent-swift"
  end

  test do
    assert_match "0.11.0", shell_output("#{bin}/agent-swift --version")
  end
end
