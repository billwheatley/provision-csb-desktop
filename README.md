# provision-csb-desktop

**THIS IS EXPERIMENTAL** and under heavy changes.

Ansible Playbooks to build my Red Hat CSB desktop.

NOTE: CSB = Corporate Standard Build. This fedora build is only available to Red Hat employees and select partners. If you want to see something similar in action using publicly available OS builds, please check out my other Ansible playbooks projects:

* TODO
* TODO

## Starting point

Testing with Fedora 43 - CSB

Use of this repo starts after:

* Install Red Hat Fedora CSB ISO
  * Let it run though the customized initial Fedora installer (no options are presented)
  * Allow the Fedora Remix installer to run, answer all the prompts with proper credentialing
  * Log in
  * FIXME - backups - Ignore for now

## Bootstrap

As your assigned user (do not sudo the call, that is done in the script):

```console
cd ~
mkdir -p ~/dev/ansible-desktop
cd ~/dev/ansible-desktop
curl -s https://raw.githubusercontent.com/billwheatley/provision-csb-desktop/main/bootstrap.sh | bash -
```

## Running

Do the following as your assigned user (do not sudo the call, that is done in the script):

```console
cd ~/dev/ansible-desktop/provision-desktop
./provision-localhost.sh
```

### Optional Execution Options

The script is designed to be run without any options however there are custom behaviors, you can use the `-h` option to see a current list of options:

```console
cd ~/dev/ansible-desktop/provision-desktop
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