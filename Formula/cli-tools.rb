class CliTools < Formula
  desc "Shell utilities for git hygiene, GPG cache warming, and Claude plugin analysis"
  homepage "https://github.com/1shooperman/cli-tools"
  url "https://github.com/1shooperman/cli-tools/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "6d1a1742596880033667a03819401a1c2984eb497571495bbf10638d6933966d"
  license "MIT"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
  end

  test do
    assert_match "SAST complete", shell_output("#{bin}/sast 2>&1")
  end
end
