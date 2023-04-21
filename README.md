# Server - Debian 11

Step by step how to build a server using Debian.

### System Operating

Update the operating system.

```console
apt-get -y update ; apt-get -y upgrade ;
```

Turn off Swap memory.

```console
swapoff -a
```

> You can also run the file ```so.sh```

### Package Management

Tools for manipulating repositories and extended package management.
Package build-essential.

```console
apt-get install -y build-essential
```

> You can also run the file ```package.sh```

### Tools and Libraries

##### sshpass

Access remote server SSH passing the password in command line parameter.

```console
apt-get install -y sshpass
```

##### iptables

Tool of firewall for filter and config rules interface of network.

```console
apt-get install -y iptables
apt-get install -y iptables-service
```

##### htop

Visual and interactive tool to visualize processes and resources on unix systems.

```console
apt-get install -y htop
```

##### wget

Tool to download files using command line in console.

```console
apt-get install -y wget
```

##### curl

Client URL - tool to sending and downloading data in various protorols.

```console
apt-get install -y curl
```

##### git

Git is a version control system.

```console
apt-get install -y git
```

##### jq

JSON data - tool for slice and filter and map and transform structured data with ease.

```console
apt-get install -y jq
```

##### zip unzip

Tool to compress and uncompress files and directories.

```console
apt-get install -y zip unzip
```

> You can also run the file ```tool.sh```

### Time

The chrony package provides a service daemon that enable systems to update their clock.

```console
# localtime
rm -fv /etc/localtime
ln -s /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime

# install
apt-get install -y chrony

# date
date
```

> You can also run the file ```chrony.sh```
