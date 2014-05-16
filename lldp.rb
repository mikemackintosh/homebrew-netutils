require 'formula'

class Lldp < Formula
  homepage 'http://www.open-lldp.org/'
  url 'http://sourceforge.net/settings/mirror_choices?projectname=openlldp&filename=openlldp-0.4alpha.zip'
  sha1 '353a5843e9bd76c6709fd414293f671e00488f8b'
    
  def install

    system './configure'
    system 'make'
    system 'make', 'install'

    ENV['PATH'] = "#{bin}:#{ENV['PATH']}"

  end
end
