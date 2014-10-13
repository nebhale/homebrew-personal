require 'formula'

class CfBuild < Formula
  head 'https://github.com/nebhale/cf-build.git'
  homepage 'https://github.com/nebhale/cf-build'
  url 'https://github.com/nebhale/cf-build/archive/v1.0.0.tar.gz'
  sha1 '51f52e81de95e385eb88217915531d8c7dbe7680'

  depends_on 'cfenv' => :run
  depends_on 'cloudfoundry-cli' => :run

  def install
    ENV['PREFIX'] = prefix
    system './install.sh'
  end

  test do
    system "#{bin}/cf-build", '--version'
  end
end
