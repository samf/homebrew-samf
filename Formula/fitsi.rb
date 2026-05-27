class Fitsi < Formula
  desc "fitsi command-line tool"
  homepage "https://github.com/samf/fitsi"
  version "0.1.0"

  on_macos do
    url "https://github.com/samf/fitsi/releases/download/v0.1.0/fitsi-v0.1.0-darwin-universal.tar.gz"
    sha256 "eaf13a80effb7d9aa477f2b6522f3085cee2e3a11ccbdb7cdb670409a0c79e3d"
  end

  on_linux do
    on_intel do
      url "https://github.com/samf/fitsi/releases/download/v0.1.0/fitsi-v0.1.0-linux-x86_64.tar.gz"
      sha256 "8ba0ce5d3e45958bf24653fa3ed504e58ecafcf95eef1cf977a287f6f7e749bb"
    end
    on_arm do
      url "https://github.com/samf/fitsi/releases/download/v0.1.0/fitsi-v0.1.0-linux-aarch64.tar.gz"
      sha256 "5c415c0bff932c22a94622330747bf101b72fb7ac0b3e2d8f4ae4ffef7d93a16"
    end
  end

  def install
    bin.install "fitsi"
  end

  test do
    touch testpath/"sample.txt"
    assert_equal "hello world",
      shell_output("#{bin}/fitsi #{testpath}/sample.txt").strip
  end
end
