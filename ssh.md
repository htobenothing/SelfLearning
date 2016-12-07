# How to build SSH server
## 1.Introduction
In order to connect to remote computer shell, we can use talnet, while it is unsafely.
Because the communication message will be all be plain text in both local computer and
remote computer. So use SSH(Secure Shell) to encrypt the communication message.

## 1.SetUp
SoftWare: OpenSSH
### 1.1. Install
`sudo apt-get install openssh-server` 
## 2. Configuration
Editing the sshd_configuartion, first back up the sshd_configuartion file
and make the backup file read only 

```
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.factory-defaults
sudo chmod a-w /etc/ssh/sshd_config.factory-defaults
```

Edit the config file 

`sudo vim /etc/ssh/sshd_config`

Restart the ssh service

`sudo restart ssh`

## 3. Access
### 3.1. Password Login
By defaults will use the username@hostname and system password to access in

`ssh username@hostname`

### 3.2 Key-Based SSH Login
SSH can use "RSA", "DSA" to generate keys. While "DSA" become less security in recent years.

#### 3.1 Generateing RSA keys

Create public and private keys in CLI 

```
mkdir ~/.ssh
chmod 700 ~/.ssh
ssh-keygen -t rsa
```

Copy **public** key to the remote server
```
ssh-copy-id <username>@<host> -p <port_no>
```
also can copy the public key and concatenate it onto authorized_keys file manually
```
cp authorized_keys authorized_keys_backup
cat id_rsa.pub >> authorized_keys
```


## Refereneces:
1. [SSH/OpenSSH/Keys](https://help.ubuntu.com/community/SSH/OpenSSH/Keys)
2. [SSH Tutorial for Linux](https://support.suso.com/supki/SSH_Tutorial_for_Linux) 

2016/12/7