
# install cups
sudo apt install -y cups

# add user "pi" to "lpadmin" group
sudo usermod -aG lpadmin pi

#  for the socket address, use own ip address
lpadmin -p bro_printer -v socket://192.168.0.145 -E

# set default printer to bro_printer
lpoptions -d bro_printer

# check default printer status
lpstat -d 

# add test printing
lpr <<< "printer, testing"