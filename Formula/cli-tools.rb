class CliTools < Formula
  desc "Shell utilities for git hygiene, GPG cache warming, and Claude plugin analysis"
  homepage "https://github.com/1shooperman/cli-tools"
  url "https://github.com/1shooperman/cli-tools/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "92d04b37268c0161e56297e2f51e139c82d16ff2745312437b513ce685b19c50"
  license "MIT"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
  end

  test do
    assert_match "SAST complete", shell_output("#{bin}/sast 2>&1")
  end
end
