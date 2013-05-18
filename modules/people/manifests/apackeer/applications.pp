class people::apackeer::applications {

  include sublime_text_2
  include iterm2::stable
  include xquartz
  include python
  include github_for_mac
  include alfred
  include caffeine
  include chrome
  include vmware_fusion
  include wget
  include vlc
  include rdio
  include firefox
  include vagrant

  ############
  # Packages #
  ############

  package { 'coreutils': }
  package { 'curl': }
  package { 'dos2unix': }
  package { 'gawk': }
  package { 'netcat': }
  package { 'nmap': }
  package { 'ngrep': }
  package { 'par2': }
  package { 'tmux': }
  package { 'tree': }
  package { 'vim': }
  package { 'zsh': }

  package { 'Bartender':
    source   => 'http://www.macbartender.com/Demo/Bartender.zip',
    provider => compressed_app,
  }

  package { 'Bowtie':
    source   => 'http://bowtieapp.com/bowtie-1.5.zip',
    provider => compressed_app,
  }

  package { 'f.lux':
    source   => 'https://justgetflux.com/mac/Flux.zip',
    provider => compressed_app,
  }

  package { 'Fantastical':
    source   => 'http://cdn.flexibits.com/Fantastical_1.3.7.zip',
    provider => compressed_app,
  }

  package { 'Moom':
    source   => 'http://manytricks.com/download/_do_not_hotlink_/moom301.dmg',
    provider => pkgdmg,
  }

  package { 'Pathfinder':
    source   => 'http://get.cocoatech.com/PF6_LION.zip',
    provider => compressed_app,
  }
}
