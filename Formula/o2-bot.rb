class O2Bot < Formula
  desc "CLI-based automated trading bot for O2 Exchange on Fuel Network"
  homepage "https://github.com/rishabhkeshan/o2-cli-bot"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rishabhkeshan/o2-cli-bot/releases/download/v#{version}/o2-bot-macos-arm64"
      sha256 "6afe20c080c24e1eba68b8ef46516619f219fd3ea5afbbfc2913d3a5086c54d5"

      def install
        bin.install "o2-bot-macos-arm64" => "o2-bot"
      end
    else
      url "https://github.com/rishabhkeshan/o2-cli-bot/releases/download/v#{version}/o2-bot-macos-x64"
      sha256 "82ec420419f46c73569b325f9a458a5f965b5e57ca3566ac90dd1e43329a0191"

      def install
        bin.install "o2-bot-macos-x64" => "o2-bot"
      end
    end
  end

  on_linux do
    url "https://github.com/rishabhkeshan/o2-cli-bot/releases/download/v#{version}/o2-bot-linux-x64"
    sha256 "ab0afcea8ad876473b8f218a5464eefbc074cc667561300ac9d1240d0bbe27d7"

    def install
      bin.install "o2-bot-linux-x64" => "o2-bot"
    end
  end

  test do
    assert_match "o2-bot", shell_output("#{bin}/o2-bot --version")
  end
end
