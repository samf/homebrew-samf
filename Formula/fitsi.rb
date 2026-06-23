class Fitsi < Formula
  desc "fitsi command-line tool"
  homepage "https://github.com/samf/fitsi"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/samf/fitsi/releases/download/v0.6.1/fitsi-v0.6.1-darwin-universal.tar.gz"
    sha256 "29c74112f44c413dcc4510a07a79c9ce79824287312259855492d94024da587c"
  end

  on_linux do
    on_intel do
      url "https://github.com/samf/fitsi/releases/download/v0.6.1/fitsi-v0.6.1-linux-x86_64.tar.gz"
      sha256 "a3c1fcc6344d3dd7d4604c20857b739e3a154f22ad093ea23279b8d120836327"
    end
    on_arm do
      url "https://github.com/samf/fitsi/releases/download/v0.6.1/fitsi-v0.6.1-linux-aarch64.tar.gz"
      sha256 "83feb084151bb5a4a2517d726bb9201552f77fd398bf475536aa44bf117b27e8"
    end
  end

  def install
    bin.install "fitsi"
  end

  test do
    assert_match version.to_s,
      shell_output("#{bin}/fitsi --version")
  end
end
