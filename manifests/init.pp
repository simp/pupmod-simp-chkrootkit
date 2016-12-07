# Sets up chkrootkit to be run once per week with results sent to syslog by
# default.
#
# @param minute String Cron minute
# @param hour String Cron hour
# @param monthday String Cron monthday
# @param month String Cron month
# @param weekday String Cron weekday
#
# @param destination
#   Set to local6.notice, any other syslog destination to forward to syslog.
#   Set to 'cron' to just use the normal cron output destination.
#
# @author Trevor Vaughan <tvaughan@onyxpoint.com>
#
class chkrootkit (
  String $minute   = '0',
  String $hour     = '0',
  String $monthday = '*',
  String $month    = '*',
  String $weekday  = '0',
  Boolean $syslog  = lookup('::simp_options::syslog',  { 'default_value' => false }),
  String $log_dest = 'local6.notice'
) {

  if $syslog {
    $_command = "/usr/sbin/chkrootkit -n | /bin/logger -p ${log_dest} -t chkrootkit"
  }
  else {
    $_command = '/usr/sbin/chkrootkit -n'
  }

  cron { 'chkrootkit':
    command  => $_command,
    minute   => $minute,
    hour     => $hour,
    month    => $month,
    monthday => $monthday,
    weekday  => $weekday,
    require  => Package['chkrootkit']
  }

  package { 'chkrootkit': ensure => 'latest' }
}