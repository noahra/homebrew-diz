class Diz < Formula
  desc "Share SSH public keys between machines via a compact passphrase"
  homepage "https://github.com/noahra/diz"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noahra/diz/releases/download/v0.2.3/diz-darwin-arm64"
      sha256 "a40aa9457cda53fb2ef6d4b5b916b12b31125cb3f1377b29f4c5db3f6ad20c16"

      def install
        bin.install "diz-darwin-arm64" => "diz"
      end
    else
      url "https://github.com/noahra/diz/releases/download/v0.2.3/diz-darwin-x64"
      sha256 "60d1134d462f1d44ee50184d71854c5537bd28968b15f47e97c1d7db57931270"

      def install
        bin.install "diz-darwin-x64" => "diz"
      end
    end
  end

  test do
    system "#{bin}/diz", "--version"
  end
end
