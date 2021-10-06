require 'formula'

class GpxConverter < Formula
  head 'https://github.com/nebhale/gpx-converter.git'
  homepage 'https://github.com/nebhale/gpx-converter'
  url 'https://github.com/nebhale/gpx-converter/archive/v1.tar.gz'
  sha256 '5a267af4b4ee1eb31bb3aaf4d0f23bd2435b169f910a1303a35ae3e72751b924'

  def install
    bin.install 'gpx-converter'
  end
end
