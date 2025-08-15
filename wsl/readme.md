## 安装podman

```shell
sudo apt update
sudo apt install podman podman-wsl -y
```

### podman warning

```shell
podman version
```

```text
WARN[0000] "/" is not a shared mount, this could cause issues or missing mounts with rootless containers
```

```shell
# 关闭wsl
wsl --shutdown
```

```shell
# 再次启动wsl后
sudo mount --make-shared /
# 再次执行不再有警告
podman version
```
