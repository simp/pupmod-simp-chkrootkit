# Reference

<!-- DO NOT EDIT: This document was generated by Puppet Strings -->

## Table of Contents

### Classes

* [`chkrootkit`](#chkrootkit): Sets up chkrootkit to be run once per week with results sent to syslog by default.

## Classes

### <a name="chkrootkit"></a>`chkrootkit`

Sets up chkrootkit to be run once per week with results sent to syslog by
default.

#### Parameters

The following parameters are available in the `chkrootkit` class:

* [`minute`](#-chkrootkit--minute)
* [`hour`](#-chkrootkit--hour)
* [`monthday`](#-chkrootkit--monthday)
* [`month`](#-chkrootkit--month)
* [`weekday`](#-chkrootkit--weekday)
* [`syslog`](#-chkrootkit--syslog)
* [`log_dest`](#-chkrootkit--log_dest)
* [`package_ensure`](#-chkrootkit--package_ensure)

##### <a name="-chkrootkit--minute"></a>`minute`

Data type: `Simplib::Cron::Minute`

Cron minute

Default value: `'0'`

##### <a name="-chkrootkit--hour"></a>`hour`

Data type: `Simplib::Cron::Hour`

Cron hour

Default value: `'0'`

##### <a name="-chkrootkit--monthday"></a>`monthday`

Data type: `Simplib::Cron::MonthDay`

Cron monthday

Default value: `'*'`

##### <a name="-chkrootkit--month"></a>`month`

Data type: `Simplib::Cron::Month`

Cron month

Default value: `'*'`

##### <a name="-chkrootkit--weekday"></a>`weekday`

Data type: `Simplib::Cron::Weekday`

Cron weekday

Default value: `'0'`

##### <a name="-chkrootkit--syslog"></a>`syslog`

Data type: `Boolean`

Enable syslog log forwarding

Default value: `simplib::lookup('simp_options::syslog', { 'default_value' => false })`

##### <a name="-chkrootkit--log_dest"></a>`log_dest`

Data type: `String`

Set to local6.notice, any other syslog destination to forward to syslog.
Worthless if $syslog is false.

Default value: `'local6.notice'`

##### <a name="-chkrootkit--package_ensure"></a>`package_ensure`

Data type: `String`

The ensure status of packages to be managed

Default value: `simplib::lookup('simp_options::package_ensure', { 'default_value' => 'installed' })`

