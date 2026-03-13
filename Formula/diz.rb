class Diz < Formula
  desc "Share SSH public keys between machines via a compact passphrase"
  homepage "https://github.com/noahra/diz"
  version "0.2.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noahra/diz/releases/download/v0.2.6/diz-darwin-arm64"
      sha256 "ca559e5df9de4c7fe02d1be37b4ea13922da953d0e95e9c174d7bef433904e0e"

      def install
        bin.install "diz-darwin-arm64" => "diz"
      end
    else
      url "https://github.com/noahra/diz/releases/download/v0.2.6/diz-darwin-x64"
      sha256 "ee16d9a37501c1816b283f3e9f11eea9c53403a9d5911d3e59b36b8a6942744b"

      def install
        bin.install "diz-darwin-x64" => "diz"
      end
    end
  end

  test do
    system "#{bin}/diz", "--version"
  end
end
