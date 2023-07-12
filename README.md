# WIREGUARD SERVER DEPLOY


## 1. How to deploy

* Clone repo
```bash
$ git clone git@github.com:eugene-panin/firezone_server.git
```
* Create terraform.tfvars like bellow
* Here goes!
```bash
$ terraform init
$ terraform plan
$ terrafotm apply
```
* Waiting 5 minutes...
* Login to server by ssh and get default generated password for firezone /opt/firezone/.env  
```bash
$ ssh devops@vpn.yourdomain.org -i ~/.ssh/id_rsa
devops@firezone-server:~$ cat /opt/firezone/.env 
```
* ...where you will find the value of the variable DEFAULT_ADMIN_PASSWORD
* now let's go to your domain through a browser and use you password.


## 2. terraform.tfvars
```ini
hcloud_token   = "API token HetznerCloud"
hcloud_ssh_key = "Path to ssh_public_key"

aws_access_key = "Your AWS Access Key"
aws_secret_key = "Your AWS Secret Key"

admin_user        = "username in email format like a john@doe.org "
external_url      = "your domain with https://"
public_keys = [
  "piblic key",
  "another one public key&&&"
]
```

## 3. default variables
```ini
hcloud_location = "nbg1"
hcloud_server_type = "cx21"
hcloud_os_typet = "ubuntu-22.04"
hcloud_disk_sizelt = "40"
hcloud_ip_range = "10.0.1.0/24"
hcloud_ssh_key = "~/.ssh/id_rsa"
sudo_user = "devops"
install_dir = "/opt/firezone"
```