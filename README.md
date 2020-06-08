# aws_setup
A collection of shell scripts for facilitating setup/login for EC2.
### `setup_ec2.sh`

Usage:
```console
./setup_ec2.sh <ec2_dns> <ssh_key>
```
- Required arguments:
    
    - `<ec2_dns>`: the public DNS for the `EC2` Instance
    - `<ssh_key>`: the name of your private ssh key 

Copies over the following information,

   - `~/.aws`
    
       - AWS credentials and SSH keys
   - `~/.ssh` 
   
       - Github SSH keys
   - `~/aws_setup/`
        
        - The repository itself
        
After copying over the information listed above, it will log you into the EC2 instance.

### `login.sh`
Usage:
```console
./login.sh <ec2_dns> <ssh_key>
```
- Required arguments:
    
    - `<ec2_dns>`: the public DNS for the `EC2` Instance
    - `<ssh_key>`: the name of your private ssh key 
    
Convenience script for logging into the `EC2` Instance. 

### `install_miniconda3_linux.sh`
Usage:
```console
./install_miniconda3_linux.sh
```

Download and install the latest version of Miniconda3 for Linux 
