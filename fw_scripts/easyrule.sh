!/bin/bash
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Nguyên lý
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Có 2 cách để thực thi lệnh
# Cách 1: gọi lệnh command line qua shell
#    ssh user@bkac.bkcloud.org commandline
# Cách 2: sử dụng http request (RESTful) như sau
#    https://bkac.bkcloud.org/easyrule.php?action=pass&int=out_cloud&proto=tcp&src=4.4.4.4&dst=5.5.5.5&dstport=1723&ipproto=inet

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Khởi tạo
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
source ./env.sh         # Lấy tham số môi trường toàn cục

action=$1               # Tham số dòng lệnh thứ 1, chứa hành động: pass|block|reject
interface=$2            # Tham số dòng lệnh thứ 2, chứa interface mạng
proto=$3                # Tham số dòng lệnh thứ 3, chứa giao thức
src_ip=$4		# Tham số dòng lệnh thứ 4, chứa địa chỉ IP nguồn
dst_ip=$5		# Tham số dòng lệnh thứ 5, chứa địa chỉ IP đích
dst_port=any		# chứa port đích

cmd=""                  # Khởi tạo lệnh cần thực thi    
echo "syntax: <action> <interface> <protocol> <src ip> <dst ip>"




#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Chương trình chính
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#..... cần tạo ra $cmd chứa lệnh cần thực thi ở đây......
cmd="easyrule $action $interface $proto $src_ip $dst_ip $dst_port"

echo $cmd                                                    # Hiển thị lệnh
ssh -p  $firewall_ssh_port $firewall_user@$firewall_ip \"$cmd\" # Thực hiện lệnh

