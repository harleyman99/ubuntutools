#!/bin/bash

# Update the system.

# Function

   function UbuntuUpdate() {

      sudo apt update -y
      sudo apt upgrade -y
      sudo apt autoremove -y

   }

# Install the Apache2 package

   function InstallApache2() {

      sudo apt install apache2 -y

   }

# Install vsftpd package

   function InstallVsftpd() {

      sudo apt install vsftpd -y

   }

# Update the vsftpd.conf file.

   function UpdateVsftpdConf() {

      sudo mv /etc/vsftpd.conf /etc/vsftpd.conf_bk

      sudo touch /etc/vsftpd.conf
      sudo chmod 600 /etc/vsftpd.conf

      sudo cat << EOF > /etc/vsftpd.conf

      echo "# Version CNST" > /etc/vsftpd.conf
      echo "listen=NO" > /etc/vsftpd.conf
      echo "listen_ipv6=YES" > /etc/vsftpd.conf
      echo "anonymous_enable=NO" > /etc/vsftpd.conf
      echo "local_enable=YES" > /etc/vsftpd.conf
      echo "write_enable=YES" > /etc/vsftpd.conf
      echo "local_umask=022" > /etc/vsftpd.conf
      echo "dirmessage_enable=YES" > /etc/vsftpd.conf
      echo "use_localtime=YES" > /etc/vsftpd.conf
      echo "connect_from_port_20=YES" > /etc/vsftpd.conf
      echo "chroot_local_user=YES" > /etc/vsftpd.conf
      echo "secure_chroot_dir=/var/run/vsftpd/empty" > /etc/vsftpd.conf
      echo "pam_service_name=vsftpd" > /etc/vsftpd.conf
      echo "rsa_cert_file=/etc/ssl/certs/ssl-cert-snakeoil.pem" > /etc/vsftpd.conf
      echo "rsa_private_key_file=/etc/ssl/private/ssl-cert-snakeoil.key" > /etc/vsftpd.conf
      echo "ssl_enable=NO" > /etc/vsftpd.conf
      echo "user_sub_token=$USER" > /etc/vsftpd.conf
      echo "local_root=/var/www" > /etc/vsftpd.conf
      echo "pasv_min_port=30000 > /etc/vsftpd.conf
      echo "pasv_max_port=31000" > /etc/vsftpd.conf
      echo "userlist_file=/etc/vsftpd.userlist" > /etc/vsftpd.conf
      echo "userlist_enable=YES" > /etc/vsftpd.conf
      echo "allow_writeable_chroot=YES" > /etc/vsftpd.conf
      echo "userlist_deny=NO" > /etc/vsftpd.conf
      sudo service vsftpd restart

   }

   sudo chmod 755 /var/www
   sudo chmod -R 777 /var/www/html

   echo "Your Apache Server and VSFTPD are now ready for use."







