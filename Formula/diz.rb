class Diz < Formula
  desc "Share SSH public keys between machines via a compact passphrase"
  homepage "https://github.com/noahra/diz"
  version "0.2.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noahra/diz/releases/download/v0.2.9/diz-darwin-arm64"
      sha256 "53c5e3822706e675ec2035101270a51db02701fe3425799cd33f356529d8d2eb"

      def install
        bin.install "diz-darwin-arm64" => "diz"
      end
    else
      url "https://github.com/noahra/diz/releases/download/v0.2.9/diz-darwin-x64"
      sha256 "aa0c917fc8fd32553679749a508186ac8fd9dfc851f2369b127844c6d95dc1c1"

      def install
        bin.install "diz-darwin-x64" => "diz"
      end
    end
  end

  test do
    system "#{bin}/diz", "--version"
  end
end
