dnf module disable redis -y
dnf module enable redis:7 -y


dnf install redis -y

sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf

systemctl enable redis
systemctl start redis