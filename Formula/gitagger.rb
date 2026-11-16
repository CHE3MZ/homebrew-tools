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
      url "https://github.com/CHE3MZ/gitagger/releases/download/v1.2.0/gitagger_Darwin_arm64.tar.gz"
      sha256 "f813b1c8dda0c4def462b941e6ade39daf34c01a8f3a868fb69fb9f949d2462c"
    else
      url "https://github.com/CHE3MZ/gitagger/releases/download/v1.2.0/gitagger_Darwin_x86_64.tar.gz"
      sha256 "204a34a5116dec08b7c0d989947544f1c541bccbde3ca9676f2d777c5e194b0c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/CHE3MZ/gitagger/releases/download/v1.2.0/gitagger_Linux_arm64.tar.gz"
      sha256 "ce483df1e506fc70688624f553aa91a99280f78f47c4a19cf2e02a2c544287aa"
    else
      url "https://github.com/CHE3MZ/gitagger/releases/download/v1.2.0/gitagger_Linux_x86_64.tar.gz"
      sha256 "f1638c540593e29920b7ac6e021efb417265da90a3f66a32e5bbc0a621421ce6"
    end
  end

  def install
    bin.install "gitagger"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gitagger version")
  end
end
