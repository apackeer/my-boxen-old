class people::apackeer::config (
  $my_homedir   = $people::apackeer::params::my_homedir,
  $my_sourcedir = $people::apackeer::params::my_sourcedir,
  $my_username  = $people::apackeer::params::my_username
) {

  ###################
  # Config Settings #
  ###################

  include osx::dock::autohide
  include osx::finder::unhide_library
  include osx::disable_app_quarantine
  include osx::no_network_dsstores
  include osx::global::expand_save_dialog
  include osx::global::expand_print_dialog


  property_list_key { 'Disable Ducking Autocorrect':
    ensure     => present,
    path       => "${my_homedir}/Library/Preferences/.GlobalPreferences.plist",
    key        => 'NSAutomaticSpellingCorrectionEnabled',
    value      => false,
    value_type => 'boolean',
  }

  file { '.GlobalPreferences Plist':
    ensure  => file,
    require => Property_list_key['Disable Ducking Autocorrect'],
    path    => "${my_homedir}/Library/Preferences/.GlobalPreferences.plist",
    mode    => '0600',
  }

  exec { 'Restart the Dock':
    command     => '/usr/bin/killall -HUP Dock',
    refreshonly => true,
  }

  property_list_key { 'Disable Gatekeeper':
    ensure  => present,
    path    => '/var/db/SystemPolicy-prefs.plist',
    key     => 'enabled',
    value   => 'no',
  }

  ##################################
  # Sublime Configuration Settings #
  ##################################

  file { 'Preferences.sublime-settings':
    path    => '${my_homedir}/Library/Application Support/Sublime Text 2/Packages/User/Preferences.sublime-settings',
    content => template("people::apackeer/Preferences.sublime-settings")
  }
}
