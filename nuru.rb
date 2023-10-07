class Nuru < Formula
    desc "Nuru programming language brew formula"
    homepage "https://nuruprogramming.org"
    version "0.5.0-alpha"

    if Hardware::CPU.arm?
      url "https://github.com/AvicennaJr/Nuru/releases/download/v0.5.0-alpha/nuru_mac_arm64_v0.5.0-alpha.tar.gz"
      sha256 "a23f1767310234e4436ba26aef0d92001f00f2cf858559295f10f15329125fb0"
    else
        #  !TODO: Change the url to the x86_64 version once it's available
        url "https://github.com/AvicennaJr/Nuru/releases/download/v0.5.0-alpha/nuru_mac_arm64_v0.5.0-alpha.tar.gz"
        #   !TODO: Change the sha256 to the x86_64 version once it's available
        sha256 "a23f1767310234e4436ba26aef0d92001f00f2cf858559295f10f15329125fb0"
    end
  
    def install
      bin.install "nuru"
    end
  
    test do
      system "#{bin}/nuru", "--version"
    end
  
    def caveats
      if Hardware::CPU.intel?
       raise  <<~EOS
          Nuru support for macOS x86_64 is not available yet. It will be added soon.
          You can track the progress on the Nuru Repository README.MD file: https://github.com/AvicennaJr/Nuru
        EOS
      end
    end
  end
  