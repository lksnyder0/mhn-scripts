# Modern Honey Network Deplopyment scripts
## Installation
Copy the contents of the scripts into the script textbox while adding a new deployment script

## Notes
### logstash-forwarder-install.sh
I am fetching a tar archive with another install script that copies the certificates 
and the configuration files. I can make the install script available upon request.

### initial-configuration-ubuntu.sh
This scripts assumes you already have ssh keys available on the server. This will
disable password authentication.

### kippo-ubuntu.sh
I am pointing to my own kippo fork but you could change that to which ever one you want.
I forked my from (micheloosterhof)[https://github.com/micheloosterhof/kippo] because
that one hase SFTP and exec support.
