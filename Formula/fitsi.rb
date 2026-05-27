class Fitsi < Formula
  desc "fitsi command-line tool"
  homepage "https://github.com/samf/fitsi"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    url "https://github.com/samf/fitsi/releases/download/v0.2.0/fitsi-v0.2.0-darwin-universal.tar.gz"
    sha256 "714b00a24d7d3c21755951715e619e1607a7c72ed38e12ea5517fd13b33c670f"
  end

  on_linux do
    on_intel do
      url "https://github.com/samf/fitsi/releases/download/v0.2.0/fitsi-v0.2.0-linux-x86_64.tar.gz"
      sha256 "4e93b2887d488912ecc86a869e5304c69504fdc455a9852a46c127f992d745b0"
    end
    on_arm do
      url "https://github.com/samf/fitsi/releases/download/v0.2.0/fitsi-v0.2.0-linux-aarch64.tar.gz"
      sha256 "4829a40c3a3ecb901dd3a372c021602e02aa638ff0a85627386b8831a33964f0"
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
