# 1. the file system of linux
## user,group，others
the authority of the file or directory: 
-rwxr--r--: file, the owner can rwx, users in same group only can r, others can r
drwxr-xr--: directory, owner can rwx, users in same group can rx, others can not do anything 

# 2. command to change the authority
chgrp: change the group
chown: change owner
chmod: chnage the property,SUID	 
	the number for the chmod:  r:4, w:2,x:1, -:0
	so -rwxrwxrwx: 777, -rwxr-xr--:754, drwxr-x---:750 
