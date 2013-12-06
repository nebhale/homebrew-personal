require 'formula'

class Ngrok < Formula
  homepage 'https://ngrok.com'
  url 'https://github.com/inconshreveable/ngrok.git', :tag => '1.6'
  version '1.6'

  head 'https://github.com/inconshreveable/ngrok.git', :branch => 'master'

  depends_on 'bazaar' => :build
  depends_on 'go' => :build
  depends_on :python => :build
  depends_on MercurialDependency => :build

  def install
    system 'make', 'release-client'
    bin.install 'bin/ngrok'
  end

  test do
    system "#{bin}/ngrok", 'version'
  end
end
