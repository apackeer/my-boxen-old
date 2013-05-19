class people::apackeer::repositories (
  $my_sourcedir = $people::apackeer::params::my_sourcedir,
  $my_homedir   = $people::apackeer::params::my_homedir,
  $my_username  = $people::apackeer::params::my_username
) {

  ###############################
  # Git config and repositories #
  ###############################

  git::config::global{ 'user.name':
    value => 'Arden Packeer',
  }

  git::config::global { 'alias.lg':
    value => "log --pretty=format:'%C(yellow)%h%C(reset) %s %C(cyan)%cr%C(reset) %C(blue)%an%C(reset) %C(green)%d%C(reset)' --graph --date-order",  }

  git::config::global { 'alias.review':
    value => 'log -p --reverse -M -C -C --patience --no-prefix',
  }

  git::config::global{ 'user.email':
    value => 'contactme@ardenpackeer.com',
  }

  git::config::global{ 'color.ui':
    value => 'auto',
  }

  git::config::global { 'alias.ll':
    value => 'log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat',
  }

  git::config::global { 'alias.dlc':
    value => 'diff --cached HEAD^',
  }

  repository { "${my_sourcedir}/dotfiles":
    source => 'apackeer/dotfiles',
  }

  repository { "${my_sourcedir}/oh-my-zsh":
    source  => 'robbyrussell/oh-my-zsh',
  }

  file { "/Users/${my_username}/.aliases":
    ensure => link,
    mode   => '0644',
    target => "${my_sourcedir}/dotfiles/.aliases",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "/Users/${my_username}/.bash_profile":
    ensure => link,
    mode   => '0644',
    target => "${my_sourcedir}/dotfiles/.bash_profile",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "/Users/${my_username}/.bash_prompt":
    ensure => link,
    mode   => '0644',
    target => "${my_sourcedir}/dotfiles/.bash_prompt",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "/Users/${my_username}/.bashrc":
    ensure => link,
    mode   => '0644',
    target => "${my_sourcedir}/dotfiles/.bashrc",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "/Users/${my_username}/.dir_colors":
    ensure => link,
    mode   => '0644',
    target => "${my_sourcedir}/dotfiles/.dir_colors",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "/Users/${my_username}/.exports":
    ensure => link,
    mode   => '0644',
    target => "${my_sourcedir}/dotfiles/.exports",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "/Users/${my_username}/.functions":
    ensure => link,
    mode   => '0644',
    target => "${my_sourcedir}/dotfiles/.functions",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "/Users/${my_username}/.gitattributes":
    ensure => link,
    mode   => '0644',
    target => "${my_sourcedir}/dotfiles/.gitattributes",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "/Users/${my_username}/.gitconfig":
    ensure => link,
    mode   => '0644',
    target => "${my_sourcedir}/dotfiles/.gitconfig",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "/Users/${my_username}/.gitignore":
    ensure => link,
    mode   => '0644',
    target => "${my_sourcedir}/dotfiles/.gitignore",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "/Users/${my_username}/.hushlogin":
    ensure => link,
    mode   => '0644',
    target => "${my_sourcedir}/dotfiles/.hushlogin",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "/Users/${my_username}/.vimrc":
    ensure => link,
    mode   => '0644',
    target => "${my_sourcedir}/dotfiles/.vimrc",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "/Users/${my_username}/.wgetrc":
    ensure => link,
    mode   => '0644',
    target => "${my_sourcedir}/dotfiles/.wgetrc",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "/Users/${my_username}/.zshrc":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.zshrc",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "/Users/${my_username}/.oh-my-zsh":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/oh-my-zsh",
    require => Repository["${my_sourcedir}/oh-my-zsh"],
  }
}
