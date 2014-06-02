require "formula"

class CfBuild < Formula
  head "https://github.com/nebhale/cf-build.git"
  homepage "https://github.com/nebhale/cf-build"
  url "https://github.com/nebhale/cf-build/archive/v1.0.0.tar.gz"
  sha1 "a44e19bd6eb610d51d3b4d87961b2ea3a7126f3e"

  depends_on "cfenv" => :run
  depends_on "cloudfoundry-cli" => :run

  def install
    ENV["PREFIX"] = prefix
    system "./install.sh"
  end

  test do
    system "#{bin}/cf-build", "--version"
  end
end
