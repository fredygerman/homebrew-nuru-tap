class Nuru < Formula
    desc "Nuru programming language brew formula"
    homepage "https://nuruprogramming.org"
    version "0.5.14"

    if Hardware::CPU.arm?
      url "https://github.com/AvicennaJr/Nuru/releases/download/v0.5.14/nuru_Darwin_arm64.tar.gz"
      sha256 "975d72f6e566a73dfa9ff780a4fcce61f0bf0a51fbec97fa4f3d2dbcac64cee5"
    else
        url "https://github.com/AvicennaJr/Nuru/releases/download/v0.5.14/nuru_Darwin_x86_64.tar.gz"
        sha256 "396a68117f1e024506fb37bea9ffa0fcadcec0b0fa75a07928aa7374a43dcbd2"
    end
  
    def install
      bin.install "nuru"
    end
  
    test do
      system "#{bin}/nuru", "--version"
    end
  
    def caveats
      <<~EOS
          \e[38;5;208m
          █░░ █░█ █▀▀ █░█ ▄▀█   █▄█ ▄▀█   █▄░█ █░█ █▀█ █░█
          █▄▄ █▄█ █▄█ █▀█ █▀█   ░█░ █▀█   █░▀█ █▄█ █▀▄ █▄█

          by Avicenna | v0.5.14\e[0m

          \e[38;5;208mTo get started, run the following command:\e[0m
          \e[38;5;208mnuru --help\e[0m

          \e[38;5;208mFor more information and documentation, visit: https://nuruprogramming.org/\e[0m
        EOS



    end
  end
  