# No-IP-Updater
A VERY simple shell based noip.com DDNS update tool.

The ideal usecase for this tool is setting it up on a linux box on your LAN, and scheduling it as a CRON job. While CRON may differ from distro to distro the script itself should work across all varieteies of Linux.



Update the username, passsword and host constants.

username="yourNOIPUsername"
password="yourNOIPPassword"
domain="your.noipaddress.com"

CRON example in Fedora/CentOS:

sudo nano /etc/crontab

Add the following:

0/30 * * * * root /path/to/yourscript/updatedns.sh

Note: I realize there are a lot of improvements to be made, you're welcome to use this to make them. I just needed something fast and easy to get it up and running at home.

