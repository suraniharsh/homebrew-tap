class Kairos < Formula
  desc "Fast, keyboard-driven terminal UI for todo.txt"
  homepage "https://github.com/suraniharsh/kairos"
  version "0.3.0-alpha"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suraniharsh/kairos/releases/download/v#{version}/kairos-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3900735a14854999616f721573d0a24a6943f92310724442a39d1ddb87abb628"
    end
    on_intel do
      url "https://github.com/suraniharsh/kairos/releases/download/v#{version}/kairos-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "558a4d427e8234cfc20ad4e0484d95ba759878c1fb4eda2927da79e4b12b5710"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suraniharsh/kairos/releases/download/v#{version}/kairos-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e848289cf427121d3dec74844bfe2f4d0807f6853a7ea21e8be4dab12972345e"
    end
    on_intel do
      url "https://github.com/suraniharsh/kairos/releases/download/v#{version}/kairos-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3defe4f1e7ac654a950a382c6cac2bdbd21f35d877fe31f0ce725e161b4090af"
    end
  end

  def install
    bin.install "kairos"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kairos --version")
  end
end
