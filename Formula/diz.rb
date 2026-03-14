class Diz < Formula
  desc "Share SSH public keys between machines via a compact passphrase"
  homepage "https://github.com/noahra/diz"
  version "0.2.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noahra/diz/releases/download/v0.2.12/diz-darwin-arm64"
      sha256 "f73481b0b17e7341e8926b87a93433a2d7736712dc648d35cf67ef704a580e56"

      def install
        bin.install "diz-darwin-arm64" => "diz"
      end
    else
      url "https://github.com/noahra/diz/releases/download/v0.2.12/diz-darwin-x64"
      sha256 "4484666a52f4c485cd453486c502dd7856528d83062b925c20bcbff838767c63"

      def install
        bin.install "diz-darwin-x64" => "diz"
      end
    end
  end

  test do
    system "#{bin}/diz", "--version"
  end
end
