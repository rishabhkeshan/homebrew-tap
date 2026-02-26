class O2Bot < Formula
  desc "CLI-based automated trading bot for O2 Exchange on Fuel Network"
  homepage "https://github.com/rishabhkeshan/o2-cli-bot"
  version "1.0.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rishabhkeshan/o2-cli-bot/releases/download/v#{version}/o2-bot-macos-arm64"
      sha256 "10237c765edf1540f5cecdb2ce75136024b4ffe7aa19211702b8d8be525c36b8"

      def install
        bin.install "o2-bot-macos-arm64" => "o2-bot"
      end
    else
      url "https://github.com/rishabhkeshan/o2-cli-bot/releases/download/v#{version}/o2-bot-macos-x64"
      sha256 "25d6306c72d37b8d09270becbeba4f6d4e9115eb3cbcb4e31a31b745e0aeef0b"

      def install
        bin.install "o2-bot-macos-x64" => "o2-bot"
      end
    end
  end

  on_linux do
    url "https://github.com/rishabhkeshan/o2-cli-bot/releases/download/v#{version}/o2-bot-linux-x64"
    sha256 "b810f0cabed73d950ff699390e07d853a09747d784e5ac4789ecc218c446baff"

    def install
      bin.install "o2-bot-linux-x64" => "o2-bot"
    end
  end

  test do
    assert_match "o2-bot", shell_output("#{bin}/o2-bot --version")
  end
end
