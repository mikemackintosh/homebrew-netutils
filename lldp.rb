require 'formula'

class Lldp < Formula
  homepage 'http://www.open-lldp.org/'
  url 'http://sourceforge.net/settings/mirror_choices?projectname=openlldp&filename=openlldp-0.4alpha.zip'
  sha1 'caa632dc1b302406d42bc1c44cf682587a05e78e'
    
  def install

    system './configure'
    system 'make'
    system 'make', 'install'

    ENV['PATH'] = "#{bin}:#{ENV['PATH']}"

  end
end
