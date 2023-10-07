class Nuru < Formula
    desc "Nuru"
    homepage "https://nuruprogramming.org/"
    url "https://github.com/AvicennaJr/Nuru/releases/download/v0.5.0-alpha/nuru_mac_arm64_v0.5.0-alpha.tar.gz"
    sha256 "a23f1767310234e4436ba26aef0d92001f00f2cf858559295f10f15329125fb0"
  
    def install
      bin.install "nuru"
    end
  
    test do
      system "#{bin}/nuru", "--version"
    end
  end
  