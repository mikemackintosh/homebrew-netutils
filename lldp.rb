require 'formula'

class lldp < Formula
  homepage 'http://www.rockstack.org/'
  url 'http://ftp-osl.osuosl.org/pub/open-lldp/open-lldp-0.9.46.tar.gz'
  sha1 '7369ade51fb8388260d07472e5c54e125ee4466b'
    
  def install

    system './configure'
    system 'make'
    system 'make', 'install'

    ENV['PATH'] = "#{bin}:#{ENV['PATH']}"

  end
end
