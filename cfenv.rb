require 'formula'

class Cfenv < Formula
  homepage 'https://github.com/nebhale/cfenv'
  url 'https://github.com/nebhale/cfenv/archive/v1.0.0.tar.gz'
  sha1 '5e46ebed93540470d207ff404b70bff6af4a87d9'

  head 'https://github.com/nebhale/cfenv.git'

  def install
    inreplace 'libexec/cfenv', '/usr/local', HOMEBREW_PREFIX
    prefix.install Dir['*']
  end

  def caveats; <<-EOS.undent
    To use Homebrew's directories rather than ~/.cfenv add to your profile:
      export CFENV_ROOT=#{var}/cfenv

    To enable shims and autocompletion add to your profile:
      if which cfenv > /dev/null; then eval "$(cfenv init -)"; fi
    EOS
  end
end
