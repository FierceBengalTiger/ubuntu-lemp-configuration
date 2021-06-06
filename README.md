# Prepare for Ubuntu Server Setup
```shell
cd
git clone https://github.com/FierceBengalTiger/ubuntu-lemp-configuration.git
cd ubuntu-lemp-configuration
chmod +x install.sh
sudo ./install.sh
```
- > It will create and configure your server.
- > Just you need to add the vhost conf files as per your requirements.
 *[We include the sample conf files]*
- > Lastly it also install the mysql secure installation script so you need to configure your DB settings.
# Add conf for your Domain
```shell
sudo cp ~/ubuntu-lemp-configuration/sample_conf /etc/nginx/sites-available/example.com.conf
sudo ln -s /etc/nginx/sites-available/example.com.conf /etc/nginx/sites-enabled/example.com.conf
sudo vim /etc/nginx/sites-available/example.com.conf
```
# Add conf with SSL for your Domain
```shell
sudo cp ~/ubuntu-lemp-configuration/sample_ssl_conf /etc/nginx/sites-available/example.com.conf
sudo ln -s /etc/nginx/sites-available/example.com.conf /etc/nginx/sites-enabled/example.com.conf
sudo vim /etc/nginx/sites-available/example.com.conf
```
- > Change `example.com.conf` as per yours.
- > Find `# Modify - ....` on conf file and change as per yours.
# Restart Nginx server
```shell
sudo systemctl restart nginx
```
# Know Nginx status
```shell
sudo systemctl status nginx 
```
# MariaDB Configuration
```shell
sudo mysql -u root -p
```
```shell
CREATE DATABASE example_db;
CREATE USER 'example_dbuser'@'localhost' IDENTIFIED BY 'yourpassword';
GRANT ALL PRIVILEGES ON example_db.* TO 'example_dbuser'@'localhost' IDENTIFIED BY 'yourpassword' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EXIT;
```
- > Change `example_db`, `example_dbuser` and `yourpassword` as per yours.
