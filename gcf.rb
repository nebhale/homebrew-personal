require 'formula'

class Gcf < Formula
  homepage 'https://github.com/cloudfoundry/cli'
  url 'https://github.com/cloudfoundry/cli.git', :tag => 'v6.0.0-beta2'
  version '6.0.0-beta2'

  head 'https://github.com/cloudfoundry/cli.git', :branch => 'master'

  depends_on 'go' => :build

  def install
    system 'bin/build'
    bin.install 'out/gcf'
  end

  test do
    system "#{bin}/gcf"
  end
end
