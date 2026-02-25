class O2Bot < Formula
  desc "CLI-based automated trading bot for O2 Exchange on Fuel Network"
  homepage "https://github.com/rishabhkeshan/o2-cli-bot"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rishabhkeshan/o2-cli-bot/releases/download/v#{version}/o2-bot-macos-arm64"
      sha256 "1637c83bc650fb0f38cf289851eaacec5a069306cb76f5ea6c7e3eafe65dbd2c"

      def install
        bin.install "o2-bot-macos-arm64" => "o2-bot"
      end
    else
      url "https://github.com/rishabhkeshan/o2-cli-bot/releases/download/v#{version}/o2-bot-macos-x64"
      sha256 "6bb097b30027f70ba5160a05591c1e159d10ba1f8412a9b0e163a6b66478306d"

      def install
        bin.install "o2-bot-macos-x64" => "o2-bot"
      end
    end
  end

  on_linux do
    url "https://github.com/rishabhkeshan/o2-cli-bot/releases/download/v#{version}/o2-bot-linux-x64"
    sha256 "c9028f151cd6f096c5ba67560fd5c061e2387ea9b1d6cd11f4966348b20e41be"

    def install
      bin.install "o2-bot-linux-x64" => "o2-bot"
    end
  end

  test do
    assert_match "o2-bot", shell_output("#{bin}/o2-bot --version")
  end
end
