# Programs

This is a list of recommended programs to install on ubuntu for travbula development

* [Docker](https://docs.docker.com/engine/install/ubuntu/) & [Docker-postinstall](https://docs.docker.com/engine/install/linux-postinstall/)
* [fzf](https://github.com/junegunn/fzf)
* [Postman](https://linuxize.com/post/how-to-install-postman-on-ubuntu-20-04/)
* [vscode](https://linuxize.com/post/how-to-install-visual-studio-code-on-ubuntu-20-04/)
* [python](https://cloudbytes.dev/snippets/upgrade-python-to-latest-version-on-ubuntu-linux)
* [nvm - see option 3](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-20-04)

## Docker

Uninstall old versions

```
sudo apt-get remove docker docker-engine docker.io containerd runc
```

### Setup repository

Update apt package index and install packages

```
sudo apt-get update

sudo apt-get install \
  ca-certificates \
  curl \
  gnupg \
  lsb-release
```

Add Docker's official GPG key

```
sudo mkdir -p /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

Setup repo

```
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

### Install

```
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
```

### Postinstall

```
sudo groupadd docker
```

```
sudo usermod -aG docker $USER
```

## VSCode

```
sudo snap install --classic code
```

### VSCode Extensions

*General*

* Gitlens
* Vim
* VSpaceCode
* Docker
* SQL Server?
* Python
* One Dark Pro++ (TPack) theme and [FiraCode font](https://github.com/tonsky/FiraCode)

*Frontend*

* Auto Rename Tag
* CSS Peek
* Prettier - Code formatter

## Python

```
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
```

```
apt list | grep python3.10
```

```
sudo apt install python3.10
```

See https://docs.getdbt.com/dbt-cli/install/pip for python versions compatible with dbt.

## fzf

```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

### ~/.bashrc

Infinte command log:

```
HISTSIZE=-1
HISTFILESIZE=-1
```

## Postman

```
sudo snap install postman
```

## Firefox

Add-ons:

* uBlock Origin
* LeechBlock NG
* Lastpass: Free Password Manager
