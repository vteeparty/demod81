echo -e "\e[31m installing nginx server\e[0m"
dnf module disable nginx -y
dnf module enable nginx:1.24 -y
dnf install nginx -y

echo -e "\e[32m enabling and starting the nginx server\e[om"
systemctl enable nginx
systemctl start nginx

echo -e "\e[33m removing the default content in httpd\e[0m"
rm -rf /usr/share/nginx/html/*

echo -e "\e[34m downloading the zip file\e[0m "
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend-v3.zip
cd /usr/share/nginx/html
unzip /tmp/frontend.zip