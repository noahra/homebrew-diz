class Diz < Formula
  desc "Share SSH public keys between machines via a compact passphrase"
  homepage "https://github.com/noahra/diz"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noahra/diz/releases/download/v0.1.0/diz-darwin-arm64"
      sha256 "d934fc93fae3243df7065566dc28cea7fc9f3927591cddd9241a39fa179e3d29"

      def install
        bin.install "diz-darwin-arm64" => "diz"
      end
    else
      url "https://github.com/noahra/diz/releases/download/v0.1.0/diz-darwin-x64"
      sha256 "1cc5906654f040c350dbc3bc2960a77abfe57654752a9f2a4d80a08599099232"

      def install
        bin.install "diz-darwin-x64" => "diz"
      end
    end
  end

  test do
    system "#{bin}/diz", "--version"
  end
end
