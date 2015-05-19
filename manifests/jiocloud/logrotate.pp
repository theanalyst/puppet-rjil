define rjil::jiocloud::logrotate(
  $logdir        = "/var/log",
  $logfile       = 'undef',
  $service       = $name,
  $rotate_every  = 'daily',
  $rotate        = 60,
  $compress      = true,
  $delaycompress = true,
  $ifempty       = false,
  $copytruncate  = 'undef',
  $dateext       = true,
  $ensure        = 'present',
) {
  if ($logfile == 'undef'){
      if ($logdir =~ /\/$/) {
        $logfile_c = "${logdir}${name}.log"
      } else {
        $logfile_c = "${logdir}/${name}.log"
      }
  } else {
    $logfile_c = $logfile
  }
  logrotate::rule{ $service:
    path          => $logfile_c,
    rotate        => $rotate,
    rotate_every  => $rotate_every,
    compress      => $compress,
    delaycompress => $delaycompress,
    ifempty       => $ifempty,
    copytruncate  => $copytruncate,
    dateext       => $dateext,
    ensure        => $ensure,
  }
}
