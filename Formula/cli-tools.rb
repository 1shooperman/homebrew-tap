class CliTools < Formula
  desc "Shell utilities for git hygiene, GPG cache warming, and Claude plugin analysis"
  homepage "https://github.com/1shooperman/cli-tools"
  url "https://github.com/1shooperman/cli-tools/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "86a42b19086e2b38e1561a8f6e747f675dafc043c3ece78fa19e2ae3550a927a"
  license "MIT"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
  end

  test do
    assert_match "SAST complete", shell_output("#{bin}/sast 2>&1")
  end
end
