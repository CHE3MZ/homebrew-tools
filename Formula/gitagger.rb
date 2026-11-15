class Gitagger < Formula
  desc "Create and push Git tags for your repository"
  homepage "https://che3mz.github.io/gitagger/"
  version "1.1.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/CHE3MZ/gitagger/releases/download/v1.1.9/gitagger_Darwin_arm64.tar.gz"
      sha256 "f618b6f4d3789774545f9418718db46a62fea21c1710620826e638ef341e153d"
    else
      url "https://github.com/CHE3MZ/gitagger/releases/download/v1.1.9/gitagger_Darwin_x86_64.tar.gz"
      sha256 "1275f6f2e4ff39928e39080451bc66add2f00eea26303c06db3375632b04029f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CHE3MZ/gitagger/releases/download/v1.1.9/gitagger_Linux_arm64.tar.gz"
      sha256 "8d60e0348e1f789c5732dc042db86423b16156a52cddc074955276835d162fbc"
    else
      url "https://github.com/CHE3MZ/gitagger/releases/download/v1.1.9/gitagger_Linux_x86_64.tar.gz"
      sha256 "3a997435e1706267a7bf5c30e9d025ec1dae8c6e5da10f0e0b931ce296b036ec"
    end
  end

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "gitagger"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitagger version")
  end
end
