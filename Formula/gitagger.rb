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
      url "https://github.com/CHE3MZ/gitagger/releases/download/v1.2.1/gitagger_Darwin_arm64.tar.gz"
      sha256 "12c7381e35ab588460684383a28d801a4502f24ec4cc0298491959d7762fb98a"
    else
      url "https://github.com/CHE3MZ/gitagger/releases/download/v1.2.1/gitagger_Darwin_x86_64.tar.gz"
      sha256 "0066e69e8452eaff4d7b004c42676337ac3279c6a07d980ad35fb78697c43e75"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CHE3MZ/gitagger/releases/download/v1.2.1/gitagger_Linux_arm64.tar.gz"
      sha256 "2a9977bd660366d1c007b5919cac1542f4542400855a1c52c137d0917a346c8a"
    else
      url "https://github.com/CHE3MZ/gitagger/releases/download/v1.2.1/gitagger_Linux_x86_64.tar.gz"
      sha256 "6f73b56071bee24b7ede0ba0848947cf046956395171cef1dacdf8b1971ba8ca"
    end
  end

  def install
    bin.install "gitagger"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitagger version")
  end
end
