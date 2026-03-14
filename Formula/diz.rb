class Diz < Formula
  desc "Share SSH public keys between machines via a compact passphrase"
  homepage "https://github.com/noahra/diz"
  version "0.2.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noahra/diz/releases/download/v0.2.7/diz-darwin-arm64"
      sha256 "20c4b32a12187f2e871cbb72737ed205a7d33d27954a262ed21921c8ef1517b8"

      def install
        bin.install "diz-darwin-arm64" => "diz"
      end
    else
      url "https://github.com/noahra/diz/releases/download/v0.2.7/diz-darwin-x64"
      sha256 "39701f9e97e696c3244481f05b055d4e63bca0e91ea7210376122a60f839f0bb"

      def install
        bin.install "diz-darwin-x64" => "diz"
      end
    end
  end

  test do
    system "#{bin}/diz", "--version"
  end
end
