!/bin/bash

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Khởi tạo
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
source ./env.sh         # Lấy tham số môi trường toàn cục

echo "syntax: <no-param>"

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Chương trình chính
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#..... cần tạo ra $cmd chứa lệnh cần thực thi ở đây......
cmd="pfctl -d"

echo $cmd                                                    # Hiển thị lệnh
echo $firewall_ssh_port $firewall_user@$firewall_ip \"$cmd\" # Thực hiện lệnh

