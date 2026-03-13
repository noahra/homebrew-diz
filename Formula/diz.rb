class Diz < Formula
  desc "Share SSH public keys between machines via a compact passphrase"
  homepage "https://github.com/noahra/diz"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noahra/diz/releases/download/v0.2.4/diz-darwin-arm64"
      sha256 "cdb0e936229be0eae03306b06d299319dc417b470706542338cb6f95b107c707"

      def install
        bin.install "diz-darwin-arm64" => "diz"
      end
    else
      url "https://github.com/noahra/diz/releases/download/v0.2.4/diz-darwin-x64"
      sha256 "da60f3a6872ac505ef00a9db71df979e5f9913070696416156d2d518c967aa88"

      def install
        bin.install "diz-darwin-x64" => "diz"
      end
    end
  end

  test do
    system "#{bin}/diz", "--version"
  end
end
