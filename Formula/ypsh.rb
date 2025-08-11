class YPSH < Formula
  desc "A programming language with a simple and intuitive syntax"
  homepage "https://github.com/YPSH-DGC/YPSH"
  version "6.4"

  on_macos do
    on_arm do
      url "https://github.com/YPSH-DGC/YPSH/releases/download/v6.4/YPSH-macos-arm64.zip"
      sha256 "26dcbe33a2d7b46572e9194924ddf1bfb2c2ec94e26226643e204b4ef8e40ee0"
    end

    on_intel do
      url "https://github.com/YPSH-DGC/YPSH/releases/download/v6.4/YPSH-macos-amd64.zip"
      sha256 "ed47417a1ed18ec5d397d1a08b4ec785ae1d8d048fcc90975359a75d70c36b98"
    end
  end

  def install
    bin_name = Dir["YPSH-macos-*"].first
    odie "archive did not contain expected binary" unless bin_name
    chmod 0755, bin_name
    bin.install bin_name => "ypsh"
  end

  test do
    system "#{bin}/ypsh", "--version"
  end
end
