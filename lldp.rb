require 'formula'

class Lldp < Formula
  homepage 'http://www.open-lldp.org/'
  url 'http://downloads.sourceforge.net/project/openlldp/openlldp-0.4alpha.zip?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fopenlldp%2Ffiles%2F&ts=1437502971&use_mirror=iweb'
  sha1 'caa632dc1b302406d42bc1c44cf682587a05e78e'

  def install

    system './configure'
    system 'make'
    system 'make', 'install'

    ENV['PATH'] = "#{bin}:#{ENV['PATH']}"

  end
end
