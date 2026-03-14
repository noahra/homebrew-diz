class Diz < Formula
  desc "Share SSH public keys between machines via a compact passphrase"
  homepage "https://github.com/noahra/diz"
  version "0.2.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noahra/diz/releases/download/v0.2.16/diz-darwin-arm64"
      sha256 "f7b11a44bb48cad43ad2e66f502a58e99a05bf0689a10786916b5518da136263"

      def install
        bin.install "diz-darwin-arm64" => "diz"
      end
    else
      url "https://github.com/noahra/diz/releases/download/v0.2.16/diz-darwin-x64"
      sha256 "051beb6e4a9a5346aae3b8ecd3033d6cdb8220798488ae3e978cd9466e820e86"

      def install
        bin.install "diz-darwin-x64" => "diz"
      end
    end
  end

  test do
    system "#{bin}/diz", "--version"
  end
end
