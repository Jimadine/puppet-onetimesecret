# A description of what this defined type does
#
# @summary A short summary of the purpose of this defined type.
#
# @example
#   onetimesecret::remote_file { 'namevar': }
define onetimesecret::remote_file($url=undef,$group=undef,$mode=undef,$owner=undef,$show_diff=undef) {
  exec{"download_${title}":
    command => "wget -q ${url} -O ${title}",
    path    => '/usr/bin:/bin',
    creates => $title,
  }
  file{$title:
    group     => $group,
    mode      => $mode,
    owner     => $owner,
    show_diff => $show_diff,
    require   => Exec["download_${title}"],
  }
}
