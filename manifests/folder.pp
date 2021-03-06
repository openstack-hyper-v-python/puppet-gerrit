define gerrit::folder(
  $ensure   = 'directory',
){

  file{
    "${gerrit::target}/${name}":
      ensure   => $ensure,
      owner    => $gerrit::user,
      group    => $gerrit::user,
      mode     => '0755',
      require  => Exec['install_gerrit'],
  }

}
