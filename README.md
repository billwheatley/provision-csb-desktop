# provision-csb-desktop

Ansible Playbooks to build my Red Hat Fedora CSB desktop.

NOTE: CSB = Corporate Standard Build. This fedora build is only available to Red Hat employees and select partners. If you want to see something similar in action using publicly available OS builds, please check out my other Ansible playbooks projects:

* [billwheatley/provision-desktop](https://github.com/billwheatley/provision-desktop)
* [billwheatley/provision-family-desktop](https://github.com/billwheatley/provision-family-desktop)

## Starting point

Tested with Fedora 43 CSB

Use of this repo starts after:

* Install (or use the pre installed) Red Hat Fedora CSB ISO
  * Let it run though the customized initial Fedora installer (no options are presented)
  * Allow the Fedora Remix installer to run, answer all the prompts with proper credentialing
* Log in with GDDM into Gnome (initially)
* Setup your backup through the prescribed process, Let it restore if needed
* Open a terminal and follow the rest of the instructions

## Bootstrap

### Situation 1: Fresh Install (Repo is not in Backup)

This sets up some default directories and clones the git repo

As your assigned user (do not sudo the call):

```console
curl -s https://raw.githubusercontent.com/billwheatley/provision-csb-desktop/main/bootstrap.sh | bash -
```

### Situation 2: If repo is restored from backup

Just ensure the repo is up to date and your on the right branch

```console
cd ~/dev/ansible-desktop/provision-csb-desktop
git checkout main
git pull
```

## Running

Do the following as your assigned user (do not sudo the call, that is done in the script):

```console
cd ~/dev/ansible-desktop/provision-csb-desktop
./provision-localhost.sh
```

### Optional Execution Options

The script is designed to be run without any options however there are custom behaviors, you can use the `-h` option to see a current list of options:

```console
./provision-localhost.sh -h
```

## (Optional) Reboot / Restart when these are done

These do not do any automatic reboots of the system. I leave that decision up to the user.  Generally I recommend a reboot after the following:

* Initial provision
* Large package manager update
* Any package update to:
  * The kernel
  * KDE Plasma / QT
  * Core system libraries

Other times a simple restart of the application may be all that is necessary, especially for browser updates (you don't get promoted like Windows or Mac versions for browser restarts)

## Post Initial Provision - Checks

1. Ensure you reboot after the initial provisioning
1. Wait for SDDM should to come up (it should be the default login manager now)
1. In the bottom left, ensure Plasma is selected (It should default to that now)
1. For login: You should only see the provided user in the username box by default
