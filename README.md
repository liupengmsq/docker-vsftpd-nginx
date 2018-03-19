# 介绍
1. 基于[docker vsftpd](https://github.com/fauria/docker-vsftpd)
2. 包含nginx服务器并自动完成配置，提供80端口访问。
3. 提供默认的docker-compose.yml文档支持

# 使用
```
git clone git@github.com:sparkpos/docker-vsftpd-nginx.git vsftpd-nginx
cd vsftpd-nginx
docker-compose up -d
```

然后，就可以通过ftp客户端上传工具，通过8080（或者其他端口）访问到上传的文件。
