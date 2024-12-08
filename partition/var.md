# Var

The /var directory is used to store variables data files

Contain data that changes frequently during the system's operation. It's primarily goal it that contains the files are expected to grow in size be updated or be temporary :

## Log files : /var/log
	System and application logs, such as syslog, auth.log and dmesg.

## Cache files : /var/cache
	Application-specific cache data like package manager caches.

## Temporary Files : /var/tmp
	Temporary files that need to persist longer than the session (unlik /tmp)

## Web Server data : /var/www
	Default location for web server files like HTML or PHP Documents

## Database Files : /var/lib
	Dynamic data managed by applicationsm such as package database

The /var directory helps maintains system organization by separating statuc system data (e.g, in /ect, or /usr) fron dynamic data that changes during normal operation.
