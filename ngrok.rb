require 'formula'

class Ngrok < Formula
  homepage 'https://ngrok.com'
  url 'https://github.com/inconshreveable/ngrok/archive/1.6.tar.gz'
  sha1 '03d076bfe078ebe52c0c81dfa1e49b497e7295fa'

  depends_on 'bazaar' => :build
  depends_on 'go' => :build
  depends_on MercurialDependency => :build

  fails_with :clang do
    build 425
    cause "clang: error: no such file or directory: 'libgcc.a'"
  end

  def install
    system 'make', 'release-client'
    bin.install 'bin/ngrok'
  end

  test do
    system "#{bin}/ngrok", 'version'
  end
end
