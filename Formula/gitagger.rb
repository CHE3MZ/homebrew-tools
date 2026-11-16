class Gitagger < Formula
  desc "Create and push Git tags for your repository"
  homepage "https://che3mz.github.io/gitagger/"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CHE3MZ/gitagger/releases/download/v1.2.2/gitagger_Darwin_arm64.tar.gz"
      sha256 "35c94f11753f5820e445a486f83f89d1eb77945de843d4091f5bb7646f8b4544"
    else
      url "https://github.com/CHE3MZ/gitagger/releases/download/v1.2.2/gitagger_Darwin_x86_64.tar.gz"
      sha256 "66b25b69ca8d8a3bc5ff8de2ce714ed41938b9ea43ca6457de018c42689b9665"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CHE3MZ/gitagger/releases/download/v1.2.2/gitagger_Linux_arm64.tar.gz"
      sha256 "2e56e6a7f8a23000ec745df253aabc2f2a8cde16d9aebe37b72550185718d402"
    else
      url "https://github.com/CHE3MZ/gitagger/releases/download/v1.2.2/gitagger_Linux_x86_64.tar.gz"
      sha256 "c6d61f452b880c5a10440a2791853b2b40783b980599bc4f7f3c34afbe30a9ef"
    end
  end

  def install
    bin.install "gitagger"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitagger version")
  end
end
