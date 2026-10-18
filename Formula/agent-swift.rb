class AgentSwift < Formula
  desc "CLI for AI agents to control macOS apps via Accessibility API"
  homepage "https://github.com/beastoin/agent-swift"
  url "https://github.com/beastoin/agent-swift/releases/download/v0.14.1/agent-swift-0.14.1-macos-universal.tar.gz"
  sha256 "0a5334db1242a9db08c94ccaeb898ec39ac078b77d2bbd01fb854b6d72394145"
  version "0.14.1"
  license "MIT"

  depends_on :macos

  def install
    bin.install "agent-swift"
  end

  test do
    assert_match "0.14.1", shell_output("#{bin}/agent-swift --version")
  end
end
