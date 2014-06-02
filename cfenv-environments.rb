require "formula"

class CfenvEnvironments < Formula
  head "https://github.com/nebhale/cfenv-environments.git"
  homepage "https://github.com/nebhale/cfenv-environments"
  url "https://github.com/nebhale/cfenv-environments/archive/v1.0.0.tar.gz"
  sha1 "a44e19bd6eb610d51d3b4d87961b2ea3a7126f3e"

  depends_on "cfenv" => :run

  def install
    ENV["PREFIX"] = prefix
    system "./install.sh"
  end

  test do
    system "#{bin}/cfenv-environments", "--version"
  end
end
