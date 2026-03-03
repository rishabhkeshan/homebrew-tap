class O2Bot < Formula
  desc "CLI-based automated trading bot for O2 Exchange on Fuel Network"
  homepage "https://github.com/rishabhkeshan/o2-cli-bot"
  version "1.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rishabhkeshan/o2-cli-bot/releases/download/v#{version}/o2-bot-macos-arm64"
      sha256 "c8cd639d38e655a93acccf24fbff4d8e5eae8de1f8e4e56f1d740f43b3d202f0"

      def install
        bin.install "o2-bot-macos-arm64" => "o2-bot"
      end
    else
      url "https://github.com/rishabhkeshan/o2-cli-bot/releases/download/v#{version}/o2-bot-macos-x64"
      sha256 "e58ac211421cbc66a6ee9241a5c83a7eb73ebaf2d722fe67d8279c2f6f655b53"

      def install
        bin.install "o2-bot-macos-x64" => "o2-bot"
      end
    end
  end

  on_linux do
    url "https://github.com/rishabhkeshan/o2-cli-bot/releases/download/v#{version}/o2-bot-linux-x64"
    sha256 "925bac01d25b0574486310cc4ba9c8b295508486c2729a31d35770517b08bb5c"

    def install
      bin.install "o2-bot-linux-x64" => "o2-bot"
    end
  end

  test do
    assert_match "o2-bot", shell_output("#{bin}/o2-bot --version")
  end
end
