require 'formula'

class LatticeCli < Formula
  head 'https://lattice.s3.amazonaws.com/latest/darwin-amd64/ltc'
  homepage 'https://github.com/pivotal-cf-experimental/lattice-cli'

  depends_on :arch => :x86_64

  def install
    bin.install 'ltc'
  end

  test do
    system "#{bin}/ltc", '--version'
  end
end
