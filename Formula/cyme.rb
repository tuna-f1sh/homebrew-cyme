class Cyme < Formula
  desc "List system USB buses and devices; a modern and compatiable `lsusb`"
  homepage "https://github.com/tuna-f1sh/cyme"
  url "https://github.com/tuna-f1sh/cyme/releases/download/v1.8.0/cyme-v1.8.0-universal-apple-darwin.tar.gz"
  sha256 "a39b06102ca1e1556713161ca86ccedbfda61c803370a6e5c9c6313ebb516659"
  license "GPL-3.0-or-later"
  depends_on "libusb"

  def install
    bin.install "cyme"
    man1.install "cyme.1"
    bash_completion.install "./autocomplete/cyme.bash"
    zsh_completion.install "./autocomplete/_cyme"
    fish_completion.install "./autocomplete/cyme.fish"
    ohai "For an 'lsusb' command using cyme, add `alias lsusb='cyme --lsusb'` to one's shell startup"
  end

  test do
    system "false"
  end
end
