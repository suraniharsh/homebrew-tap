class Kairos < Formula
  desc "Fast, keyboard-driven terminal UI for todo.txt"
  homepage "https://github.com/suraniharsh/kairos"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suraniharsh/kairos/releases/download/v#{version}/kairos-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "8f1b88de7dfd94dd9b3c47e59fc6dae96b83cc061991fa1c9b4bba141706f642"
    end
    on_intel do
      url "https://github.com/suraniharsh/kairos/releases/download/v#{version}/kairos-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "05011ad7bd497856d7f71b21bf66718ad9972a89f5041850c9750b17ef6b36c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suraniharsh/kairos/releases/download/v#{version}/kairos-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "67be9b2987833a8a70fd5f2cc7bf2623dfb116ba5660369bf46d6473b3baff1e"
    end
    on_intel do
      url "https://github.com/suraniharsh/kairos/releases/download/v#{version}/kairos-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "610ce934cac378fb4b6b25f0ac540b44ec00e6b851e2d17d35cd80ee6dc97f47"
    end
  end

  def install
    bin.install "kairos"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kairos --version")
  end
end
