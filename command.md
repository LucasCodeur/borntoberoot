# Command

## SSH

### Check SSH Status
	sudo systemctl status ssh

### Change SSH listening port to 4242
	sudo vim /ect/ssh/sshd_config

### Connect by ssh in the server
	ssh lud-adam@localhost -p 4242
	
## USER
	
### Check user setting password
	chage -l lud-adam
	
### Display a list of all users on the machines
	cat /etc/passwd | cut -d ":" -f 1

### Delete a user and all associated files
	sudo userdel -r <login>

### Create a new user
	sudo useradd
	
### Changer the user parameters
	sudo usermod
		-l : for the username

## GROUPS
	
### Create a new group
	groupadd

### Add a user to a group
	gpasswd -a

### Removes a user from a group
	gpasswd -d

### Delete a group
	groupdel
	
### Display the group of a user
	groups

### show a user's main group ID
	id -g

### Display a list of all users in a group
	getent group
	
### Add a user to sudo group
	sudo usermode -aG sudo <username>
		
## PASSWORD
	
### Access to the config of passwd (restriction of characters)
	/etc/security/pwquality.conf

### Access to the config of passwd (repition)
	/etc/login.defs
	
### Set up a password to an user
	sudo passwd <login>
	
## UFW
	
### Check UFW status
	sudo ufw status verbose
	
### Allow or deny ports
	sudo ufw allow <port>
	sudo ufw deny <port>
	
### Remove port fule
	sudo ufw delete allow <port>
	sudo ufw delete deny <port>

### HOSTNAME
	
### Change hostname name 
	sudo hostnamectl set-hostname <new_hostname>

### See the current name of the hostname
	hostnamectl status

## SUDO
	
### See if user has sudo privileges
	sudo whoami
		if output = root, it's ok

### Edit the suoders.tmp file 
	sudo visudo
	
### Acess log file of sudo
	/var/log/sudo/sudo.log

## TTY
	
### how to check if tty it is actived
	tty if I have the following output it is ok : /dev/pts/0

## Cron
    
### Enable cron
    systemctl enable cron

### Edit the cron table
    crontab -e

### Activate the script all the tens minutes
    */10 * * * * bash /root/monitoring.sh

### Disable the script
#### edit the crontable
#### comment the script

## Wordpress

### Access to my wordpress
    http://127.0.0.1:8080/

## Fail2ban
    
### How to deban

#### Find the jail that bnned the IP
    fail2ban-client status
#### Check the banned IP's for the jail
    fail2ban-client status JAIL_NAME
#### Unban the specific IP
    fail2ban-client set JAIL_NAME unbanip IP_ADDRESS
#### Restart fail2ban
    systemctl restart fail2ban
