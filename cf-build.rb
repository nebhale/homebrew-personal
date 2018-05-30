require 'formula'

class CfBuild < Formula
  head 'https://github.com/nebhale/cf-build.git'
  homepage 'https://github.com/nebhale/cf-build'
  url 'https://github.com/nebhale/cf-build/archive/v1.0.0.tar.gz'
  sha256 'f526a83cb9915d960360a1cbe62705570eb06358d8e47f57c552836ab8adb414'

  depends_on 'cfenv'
  depends_on 'cf-cli'

  def install
    ENV['PREFIX'] = prefix
    system './install.sh'
  end

  test do
    system "#{bin}/cf-build", '--version'
  end
end
