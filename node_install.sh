#! /bin/bash
##v0.1 maintainer Issacc<8qllyhy@gmail.com>
cd ~
apt-get update
apt-get install wget git -y
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
git clone https://github.com/Ehco1996/shadowsocksr.git
cd shadowsocksr
pip install -r requirements.txt
#########初始化用户配置#########
#
#   尝试将配置文档下的参数通过
#   echo命令写进对应的文档里
###############################
cd scripts
bash initcfg.sh
cd ../configs
#这里只支持webapi的接口
rm -f userapiconfig.py
read -p "Node ID:" id
read -p "Update Time:" ut
read -p "Webapi Token:" token
read -p "Webapi URL:" url
read -p "Public Address:" add
echo "API_INTERFACE = 'webapi'" >> userapiconfig.py
echo "UPDATE_TIME = $ut" >> userapiconfig.py
echo "WEBAPI_URL = '$url'" >> userapiconfig.py
echo "SERVER_PUB_ADDR = '$add'" >> userapiconfig.py
echo "NODE_ID = '$id'" >> userapiconfig.py
echo "TOKEN = \"$token\"" >> userapiconfig.py
echo "MYSQL_CONFIG = 'configs/usermysql.json'" >> userapiconfig.py
echo "MUAPI_CONFIG = 'usermuapi.json'" >> userapiconfig.py
##测试连通性##
python ../server.py