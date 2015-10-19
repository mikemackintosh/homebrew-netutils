require 'formula'

class Lldp < Formula
  homepage 'http://www.open-lldp.org/'
  url 'http://sourceforge.net/settings/mirror_choices?projectname=openlldp&filename=openlldp-0.4alpha.zip'
  sha1 '404bae6a4fde526625a1a4af895d44a680565e98'
    
  def install

    system './configure'
    system 'make'
    system 'make', 'install'

    ENV['PATH'] = "#{bin}:#{ENV['PATH']}"

  end
end
