class Fitsi < Formula
  desc "fitsi command-line tool"
  homepage "https://github.com/samf/fitsi"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/samf/fitsi/releases/download/v0.5.0/fitsi-v0.5.0-darwin-universal.tar.gz"
    sha256 "6476c3d5c374e020c7c61aa035502a3e1da0a5253bd38cd26f5597562d19e8a8"
  end

  on_linux do
    on_intel do
      url "https://github.com/samf/fitsi/releases/download/v0.5.0/fitsi-v0.5.0-linux-x86_64.tar.gz"
      sha256 "7e24ce6bae3ed613b4e2fbb3dd0d8555438216a6ba6697429592c7e1925e9c07"
    end
    on_arm do
      url "https://github.com/samf/fitsi/releases/download/v0.5.0/fitsi-v0.5.0-linux-aarch64.tar.gz"
      sha256 "7482848243586a98db0a0eab57b032aeb78149e6478b3f3aa8bfe7840290f886"
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
