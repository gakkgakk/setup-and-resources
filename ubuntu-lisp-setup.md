# Ubuntu Lisp Setup

This is a guide to setup a development environment for ANSI Common Lisp on ubuntu

We will use:

* roswell - package manager
* spacemacs (emacs) - editor
* sbcl-bin - Lisp implementation?
* SLIME (Superior Lisp Interaction Mode for Emacs)

## roswell

```sh
sudo apt install -y git build-essential automake libcurl4-openssl-dev
git clone -b release https://github.com/roswell/roswell.git
cd roswell
sh bootstrap
./configure
make
sudo make install
ros setup
```

## Spacemacs

First install emacs from snap:

```sh
sudo snap install emacs --classic
```

At the moment of writing the version from the ubuntu apt repository is outdated for spacemacs.

Clone spacemacs repository into `$HOME/.emacs.d` 

```sh
git clone https://github.com/syl20bnr/spacemacs.git -b develop ~/.emacs.d
```

When running the spacemacs installation when opening emacs for the first time, choose:

```
What is your preferred editing style?
-> Among the stars aboard the Evil flagship (vim)
```

```
What distribution of spacemacs would you like to start with?
-> The standard distribution, recommended (spacemacs)
```

## sbcl and SLIME

Install slime

```sh
ros install sbcl-bin slime
```

Install emacs slime layer, open dotfile with `spc f e d`

To `dotspacemacs-configuration-layers` list, add `common-lisp` and then restart emacs to install the lisp layer

Add the following to `~/.emacs.d/init.el`:

```
(load (expand-file-name "~/roswell/helper.el"))
(setq inferier-lisp-program "ros -Q run")
```

## Tips

To open repl do `, '` from a `.lisp` file or just `M-x slime` from anywhere (where `M-x` means press meta-key and x - meta-key is usually the alt key)
