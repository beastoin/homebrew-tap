class AgentSwift < Formula
  desc "CLI for AI agents to control macOS apps via Accessibility API"
  homepage "https://github.com/beastoin/agent-swift"
  url "https://github.com/beastoin/agent-swift/releases/download/v0.11.1/agent-swift-0.11.1-macos-universal.tar.gz"
  sha256 "006933d75949a93f455a9dc63e1671d37ce2b513bb552aea842531c09a7e76c7"
  version "0.11.1"
  license "MIT"

  depends_on :macos

  def install
    bin.install "agent-swift"
  end

  test do
    assert_match "0.11.1", shell_output("#{bin}/agent-swift --version")
  end
end
