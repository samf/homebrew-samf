class Fitsi < Formula
  desc "fitsi command-line tool"
  homepage "https://github.com/samf/fitsi"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/samf/fitsi/releases/download/v0.6.0/fitsi-v0.6.0-darwin-universal.tar.gz"
    sha256 "36646cd7c76eb66d9f484a41332dee20ce38076e1564bd926f7c5c0cc573f2ba"
  end

  on_linux do
    on_intel do
      url "https://github.com/samf/fitsi/releases/download/v0.6.0/fitsi-v0.6.0-linux-x86_64.tar.gz"
      sha256 "303e328423003e5ab4afe51ef61cfe42da2057b2ca04da5b175e94e4a4efcddd"
    end
    on_arm do
      url "https://github.com/samf/fitsi/releases/download/v0.6.0/fitsi-v0.6.0-linux-aarch64.tar.gz"
      sha256 "0413f09fcc26694acc8a5cd2e5e9e09e4c75e6deaacb787332a2f35c46132e85"
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
