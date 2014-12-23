require 'formula'

class GpxConverter < Formula
  head 'https://github.com/nebhale/gpx-converter.git'
  homepage 'https://github.com/nebhale/gpx-converter'
  url 'https://github.com/nebhale/gpx-converter/archive/v1.tar.gz'
  sha1 'dfa32f8fad4e58a2b3906880aa368d5a93671ccb'

  def install
    bin.install 'gpx-converter'
  end
end
