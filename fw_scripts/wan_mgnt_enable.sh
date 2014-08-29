!/bin/bash
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# Script cho phép truy cập trang web quản trị tường lửa thông qua giao diện wan

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Khởi tạo
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
source ./env.sh         # Lấy tham số môi trường toàn cục

echo "syntax: <no-param>"

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Chương trình chính
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#..... cần tạo ra $cmd chứa lệnh cần thực thi ở đây......
cmd="pfSsh.php playback enableallowallwan"

echo $cmd                                                    # Hiển thị lệnh
ssh -p  $firewall_ssh_port $firewall_user@$firewall_ip \"$cmd\" # Thực hiện lệnh

