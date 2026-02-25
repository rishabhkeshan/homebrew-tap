class O2Bot < Formula
  desc "CLI-based automated trading bot for O2 Exchange on Fuel Network"
  homepage "https://github.com/rishabhkeshan/o2-cli-bot"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rishabhkeshan/o2-cli-bot/releases/download/v#{version}/o2-bot-macos-arm64"
      sha256 "ffa9ea0f5ad471640691d9d808de2463c551fd05d4a7f607e7ef921bd5238a6b"

      def install
        bin.install "o2-bot-macos-arm64" => "o2-bot"
      end
    else
      url "https://github.com/rishabhkeshan/o2-cli-bot/releases/download/v#{version}/o2-bot-macos-x64"
      sha256 "7539a138bb1a12b363f7d2de19badf1c519e1c2eb8db325a94245129b89f7767"

      def install
        bin.install "o2-bot-macos-x64" => "o2-bot"
      end
    end
  end

  on_linux do
    url "https://github.com/rishabhkeshan/o2-cli-bot/releases/download/v#{version}/o2-bot-linux-x64"
    sha256 "d4003b6b0fea39d03835c93399db9f94aeb689884f3b95eb073c0c5a475002b3"

    def install
      bin.install "o2-bot-linux-x64" => "o2-bot"
    end
  end

  test do
    assert_match "o2-bot", shell_output("#{bin}/o2-bot --version")
  end
end
