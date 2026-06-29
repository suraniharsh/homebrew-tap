class Kairos < Formula
  desc "Fast, keyboard-driven terminal UI for todo.txt"
  homepage "https://github.com/suraniharsh/kairos"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suraniharsh/kairos/releases/download/v#{version}/kairos-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0ddc4477f329c3301a6b5fef45a8264e71f0600d7de40c82c0fa1580a882509b"
    end
    on_intel do
      url "https://github.com/suraniharsh/kairos/releases/download/v#{version}/kairos-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "10d7c4d135bc90cec13913f2a750bfafa90e22ad8d7bbce9bb8e20bb83e25276"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suraniharsh/kairos/releases/download/v#{version}/kairos-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ac25167abd8fb88458770fdfa13de9a70e846b63ba44f323a9d33dfa77dc7935"
    end
    on_intel do
      url "https://github.com/suraniharsh/kairos/releases/download/v#{version}/kairos-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e282bac8ad9f74fbe6684ee75f6c64d35a6e86610954438d008e3ef13c656549"
    end
  end

  def install
    bin.install "kairos"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kairos --version")
  end
end
