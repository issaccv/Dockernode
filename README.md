# 使用说明

嘤语太差，写个commit还行，一到README就触头

索性就用中文

---

Docker版本的Ehco1996/shadowsocksr

主要为了方便后端环境有所折腾，使用方法也很简单

```sh
git clone https://github.com/Isaccliberty/Dockernode.git
```

在configs中按照说明调整好你的各项参数，然后

```sh
docker run -d -v ~/Dockernode/configs:/root/shadowsocks/configs --restart=always --name=node --network=host issacc/dockernode
```

如果你追求极致的精简或者希望使用python 2.7.15运行

```sh
docker run -d -v ~/Dockernode/configs:/root/shadowsocks/configs --restart=always --name=node --network=host issacc/dockernode:dev
```

如果需要更改自己的配置文件，只需停止运行的容器

```sh
docker stop node
```

目前只经过了build和连通性测试，最终的生产环境中还需要更多的样本

一键安装配置脚本（不推荐）

```sh
sudo bash node_install.sh
```



已添加至DockerHub