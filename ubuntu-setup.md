# Programs

This is a list of recommended programs to install on ubuntu for travbula development

* [vscode](https://linuxize.com/post/how-to-install-visual-studio-code-on-ubuntu-20-04/): `sudo snap install --classic code`
* [Postman](https://linuxize.com/post/how-to-install-postman-on-ubuntu-20-04/): `sudo snap install postman`
* [DBeaver (database GUI)](https://dbeaver.io/download/): `sudo snap install dbeaver-ce`
* [Docker](https://docs.docker.com/engine/install/ubuntu/) & [Docker-postinstall](https://docs.docker.com/engine/install/linux-postinstall/)
* [python](https://cloudbytes.dev/snippets/upgrade-python-to-latest-version-on-ubuntu-linux)
* [fzf](https://github.com/junegunn/fzf)
* [nvm - see option 3](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-20-04)

## VSCode

### VSCode Extensions

*General*

* Gitlens
* Vim
* [VSpaceCode](https://github.com/VSpaceCode/VSpacecode.git): spacemacs-like keybindings for vscode
* [Docker](https://github.com/microsoft/vscode-docker)
* SQL Server?
* Python
* One Dark Pro++ (TPack) theme and [FiraCode font](https://github.com/tonsky/FiraCode)
* [VS Browser](https://github.com/Phu1237/vscode-vs-browser.git): integrated web browser
* [Postcode](https://github.com/rohinivsenthil/postcode): postman-like API client
* [dbt Power User](https://github.com/innoverio/vscode-dbt-power-user.git)
* [Remote - SSH](https://github.com/Microsoft/vscode-remote-release)

*Frontend*

* Auto Rename Tag
* CSS Peek
* Prettier - Code formatter

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

## Python

Skip dette? Førte til trøbbel sist

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

This tool allows you to search through your terminal command log in a pretty cool way!

Try CTRL+R in the terminal and start searching today!

### ~/.bashrc

Infinte command log for large search history:

```
HISTSIZE=-1
HISTFILESIZE=-1
```

## Firefox

Add-ons:

* uBlock Origin
* LeechBlock NG
* Lastpass: Free Password Manager
