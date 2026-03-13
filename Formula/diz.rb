class Diz < Formula
  desc "Share SSH public keys between machines via a compact passphrase"
  homepage "https://github.com/noahra/diz"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noahra/diz/releases/download/v0.2.2/diz-darwin-arm64"
      sha256 "48104fc78854fd42a4eaeb1637661ce5cce26b3ccba0b93cfe120bbf0a0822be"

      def install
        bin.install "diz-darwin-arm64" => "diz"
      end
    else
      url "https://github.com/noahra/diz/releases/download/v0.2.2/diz-darwin-x64"
      sha256 "6f3fa7ef40f68a408673f6377a6e5380f39fedd1c86cf67b1ba23d89b54dcc90"

      def install
        bin.install "diz-darwin-x64" => "diz"
      end
    end
  end

  test do
    system "#{bin}/diz", "--version"
  end
end
