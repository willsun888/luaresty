
## 代码目录

```
├── lualib  ## 使用第三方lua库
├── luajit  ## lua运行库
├── nginx   ## nginx目录
    ├── sbin   ## nginx启动程序
    ├── conf   ## 配置文件
    ├── lua    ## lua的MVC代码
```

## 启动程序

```
cd nginx/sbin
./nginx -p ../nginx
```