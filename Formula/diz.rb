class Diz < Formula
  desc "Share SSH public keys between machines via a compact passphrase"
  homepage "https://github.com/noahra/diz"
  version "0.2.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noahra/diz/releases/download/v0.2.8/diz-darwin-arm64"
      sha256 "8786d6d7bd7d9465acb7c358572c66d87100125fe31edfff201ca6b5488a6040"

      def install
        bin.install "diz-darwin-arm64" => "diz"
      end
    else
      url "https://github.com/noahra/diz/releases/download/v0.2.8/diz-darwin-x64"
      sha256 "5376e7955e591c8aedb1463c31cb376fedd4243ec244ff97950d5d5806175e69"

      def install
        bin.install "diz-darwin-x64" => "diz"
      end
    end
  end

  test do
    system "#{bin}/diz", "--version"
  end
end
