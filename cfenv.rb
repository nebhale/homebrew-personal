require 'formula'

class Cfenv < Formula
  head 'https://github.com/nebhale/cfenv.git'
  homepage 'https://github.com/nebhale/cfenv'
  url 'https://github.com/nebhale/cfenv/archive/v1.0.0.tar.gz'
  sha256 '57a96e09a75eeccc1df2c16ff0492e7a0c97b93be8d11b883fc46c2ce8fa1584'

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
