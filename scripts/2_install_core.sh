#install_core.sh installs packages and gets the code
#and data required for the reference environment.  Configuration
#usually happens later in configure_core.sh unless something 
#depends on it here.

log=/vagrant/temp/install.log
echo Started install_core.sh | tee -a $log

echo Installing packages | tee -a $log
sudo apt-get -y update 
sudo apt-get -y install unzip libxt6 libxtst6
echo Completed package installation | tee -a $log

echo Getting MATLAB Runtime install files | tee -a $log
wget -q -O MCR_R2017b_glnxa64_installer.zip "http://ssd.mathworks.com/supportfiles/downloads/R2017b/deployment_files/R2017b/installers/glnxa64/MCR_R2017b_glnxa64_installer.zip"

echo Writing build info into build_info.txt | tee -a $log
printf 'MCR R2017b' >> /vagrant/temp/build_info.txt
printf '\nEnvironment built at ' >> /vagrant/temp/build_info.txt
date >> /vagrant/temp/build_info.txt
echo Got code | tee -a $log

echo Completed install_core.sh | tee -a $log