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
docker build -t panel/node:latest .
docker run -d -v ~/Dockernode/configs:/root/shadowsocks/configs --restart=always --name=node --network=host panel/node
```

目前只经过了build和连通性测试，最终的生产环境中还需要更多的样本