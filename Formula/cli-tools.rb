class CliTools < Formula
  desc "Shell utilities for git hygiene, GPG cache warming, and Claude plugin analysis"
  homepage "https://github.com/1shooperman/cli-tools"
  url "https://github.com/1shooperman/cli-tools/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "54a891ff5e1ea66b4003633d108c779b9df46bdf5862b63baefb77ac26598b0a"
  license "MIT"

  def install
    bin.install Dir["bin/*"]
    lib.install Dir["lib/*"]
  end

  test do
    assert_match "SAST complete", shell_output("#{bin}/sast 2>&1")
  end
end
