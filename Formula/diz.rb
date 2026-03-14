class Diz < Formula
  desc "Share SSH public keys between machines via a compact passphrase"
  homepage "https://github.com/noahra/diz"
  version "0.2.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noahra/diz/releases/download/v0.2.10/diz-darwin-arm64"
      sha256 "865dd6a096605be54f58795d44fb45e4205f42e5587a6a5e123217ef802f60fb"

      def install
        bin.install "diz-darwin-arm64" => "diz"
      end
    else
      url "https://github.com/noahra/diz/releases/download/v0.2.10/diz-darwin-x64"
      sha256 "c2d6bade30bc27d79915a38c8e43cf3f491ad64b3823b64319ccb6a73abfb06d"

      def install
        bin.install "diz-darwin-x64" => "diz"
      end
    end
  end

  test do
    system "#{bin}/diz", "--version"
  end
end
