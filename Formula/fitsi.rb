class Fitsi < Formula
  desc "fitsi command-line tool"
  homepage "https://github.com/samf/fitsi"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/samf/fitsi/releases/download/v1.0.0/fitsi-v1.0.0-darwin-universal.tar.gz"
    sha256 "39a2225c67b78e32e62e377035bec3e384a82b0ecfc0c0bb272d10d978f7f5bc"
  end

  on_linux do
    on_intel do
      url "https://github.com/samf/fitsi/releases/download/v1.0.0/fitsi-v1.0.0-linux-x86_64.tar.gz"
      sha256 "203d402f20c38a37fcd134dc5e2e4b37e779ce6b10d27e7a4f4106613b12e278"
    end
    on_arm do
      url "https://github.com/samf/fitsi/releases/download/v1.0.0/fitsi-v1.0.0-linux-aarch64.tar.gz"
      sha256 "efe934925aac925789366b4914e6d1962497cf9b1f96d9eb0bea5a8983f10154"
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
