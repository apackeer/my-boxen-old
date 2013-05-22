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
  include autojump


  #####################
  # Homebrew Packages #
  #####################

  package {
    [
      'coreutils',
      'curl',
      'dos2unix',
      'gawk',
      'netcat',
      'nmap',
      'ngrep',
      'par2',
      'tmux',
      'tree',
      'vim',
      'zsh'
    ]:
  }

  exec { 'Install virtualenv':
    command     => 'pip install virtualenv virtualenvwrapper',
    require => Class['python']
  }

  #####################
  # External Packages #
  #####################

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

  ########################
  # Sublime Text 2 Setup #
  ########################

  sublime_text_2::package { 'Cucumber':
    source => 'drewda/cucumber-sublime2-bundle'
  }

  sublime_text_2::package { 'Git':
    source => 'kemayo/sublime-text-2-git'
  }

  sublime_text_2::package { 'GitGutter':
    source => 'jisaacks/GitGutter'
  }

  sublime_text_2::package { 'Pretty JSON':
    source => 'dzhibas/SublimePrettyJson'
  }

  sublime_text_2::package { 'Puppet':
    source => 'russCloak/SublimePuppet'
  }

  sublime_text_2::package { 'SideBarEnhancements':
    source => 'titoBouzout/SideBarEnhancements'
  }

  sublime_text_2::package { 'Solarized Color Scheme':
    source => 'SublimeColors/Solarized'
  }

  sublime_text_2::package { 'SublimeLinter':
    source => 'SublimeLinter/SublimeLinter'
  }

    sublime_text_2::package { 'Theme - Soda':
    source => 'buymeasoda/soda-theme/'
  }

  #################
  # Vagrant Setup #
  #################

  #vagrant::box { 'precise64/vmware_fusion':
  #  source => 'http://files.vagrantup.com/precise64_vmware.box'
  #}

}
