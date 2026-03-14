class Diz < Formula
  desc "Share SSH public keys between machines via a compact passphrase"
  homepage "https://github.com/noahra/diz"
  version "0.2.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noahra/diz/releases/download/v0.2.11/diz-darwin-arm64"
      sha256 "0364cd8e5852d3bc892467475c636d45f40aa6d4f3fcf81fc368ed31be5723a1"

      def install
        bin.install "diz-darwin-arm64" => "diz"
      end
    else
      url "https://github.com/noahra/diz/releases/download/v0.2.11/diz-darwin-x64"
      sha256 "298ca182ae5754fe0ce5b64c92846270a9257847b90f5b2c7b06c3b2a58608b3"

      def install
        bin.install "diz-darwin-x64" => "diz"
      end
    end
  end

  test do
    system "#{bin}/diz", "--version"
  end
end
