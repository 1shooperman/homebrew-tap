class CliTools < Formula
  desc "Shell utilities for git hygiene, GPG cache warming, and Claude plugin analysis"
  homepage "https://github.com/1shooperman/cli-tools"
  url "https://github.com/1shooperman/cli-tools/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "fcdd57174fcd7fa4945005612a22ebb63cc6fc338cfbb1a5abb008eb2939afe3"
  license "MIT"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
  end

  test do
    assert_match "SAST complete", shell_output("#{bin}/sast 2>&1")
  end
end
