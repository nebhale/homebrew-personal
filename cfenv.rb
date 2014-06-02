require 'formula'

class Cfenv < Formula
  homepage 'https://github.com/nebhale/cfenv'
  url 'https://github.com/nebhale/cfenv/archive/v1.0.0.tar.gz'
  sha1 '825ceec55805b8bb80a6d6003fd3cef824d7ff14'

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
