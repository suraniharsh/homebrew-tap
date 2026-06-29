class Kairos < Formula
  desc "Fast, keyboard-driven terminal UI for todo.txt"
  homepage "https://github.com/suraniharsh/kairos"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/suraniharsh/kairos/releases/download/v#{version}/kairos-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "fbaa2ba61e183e2adf106450dbba654c8969bbfc41926606ec9bbb07219e4106"
    end
    on_intel do
      url "https://github.com/suraniharsh/kairos/releases/download/v#{version}/kairos-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "40dec389dec80bdec3443274022714b9abc6de60d334137bf58f78a4abde6029"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/suraniharsh/kairos/releases/download/v#{version}/kairos-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "da4ba239ecb2009376a68ce95981898612784dde7cb46a6d7d46d0190b5fa870"
    end
    on_intel do
      url "https://github.com/suraniharsh/kairos/releases/download/v#{version}/kairos-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b3edfc37e9fa12367eebd85018c09c01491490e6d682e687df548ad11073890"
    end
  end

  def install
    bin.install "kairos"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kairos --version")
  end
end
