A PPA repository for packages:

libnginx-mod-http-zip
libnginx-mod-http-ntlm

Usage

```
sudo curl -SsL -o /etc/apt/trusted.gpg.d/yogsottot.gpg https://yogsottot.github.io/ppa/yogsottot.gpg
sudo curl -SsL -o /etc/apt/sources.list.d/yogsottot.list https://yogsottot.github.io/ppa/yogsottot.list
sudo apt update
sudo apt install libnginx-mod-http-zip libnginx-mod-http-ntlm
```

Source

https://wiki.debian.org/DebianRepository/SetupWithReprepro
