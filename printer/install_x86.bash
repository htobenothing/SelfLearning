
# create tmp
cd ~
mkdir tmp_printer 
cd tmp_printer

wget http://download.brother.com/welcome/dlf006893/linux-brprinter-installer-2.1.1-1.gz
gunzip linux-brprinter-installer-2.1.1-1.gz
sudo bash linux-brprinter-installer-2.1.1-1.gz HL2270-DW

cd ..
rm -rf tmp_printer
