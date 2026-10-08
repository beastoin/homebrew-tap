class AgentSwift < Formula
  desc "CLI for AI agents to control macOS apps via Accessibility API"
  homepage "https://github.com/beastoin/agent-swift"
  url "https://github.com/beastoin/agent-swift/releases/download/v0.13.0/agent-swift-0.13.0-macos-universal.tar.gz"
  sha256 "81c381462f93922220d384ce4668b10000566bda8c060d23b65a0eba17496333"
  version "0.13.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "agent-swift"
  end

  test do
    assert_match "0.13.0", shell_output("#{bin}/agent-swift --version")
  end
end
