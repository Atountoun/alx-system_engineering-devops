# This manifest is used to kill a process named killmenow

exec { 'kill-process':
	command => 'pkill killmenow',
	path    => '/usr/bin',
	onlyif  => 'pgrep killmenow',
}
