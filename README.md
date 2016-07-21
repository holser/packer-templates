# Packer Templates

[![Circle CI](https://circleci.com/gh/holser/packer-templates.svg?style=svg)](https://circleci.com/gh/holser/packer-templates)
| [Atlas Builds](https://atlas.hashicorp.com/holser/build-configurations/packer-templates)
| [Atlas Vagrant Boxes](https://atlas.hashicorp.com/holser/boxes/packer-templates)

---

The automated build is triggered by a WebHook in GitHub to start a build in
CircleCI that triggers builds. All artifacts are pushed to
[Atlas](https://github.com/holser/packer-templates/) with `packer push`.

## Packer template

See the `ubuntu-server.json` with the post-processors section with all details about
deploying the Vagrant Box to Atlas.

## circle.yml
See the `circle.yml` for details how the glue works. It just installs packer 0.10.1
and starts the `packer push`.

## Login Credentials

(root password is "vagrant" or is not set )

* Username: vagrant
* Password: vagrant


## VM Specifications

* Vagrant Libvirt Provider
* Vagrant Virtualbox Provider

### qemu
* VirtIO dynamic Hard Disk (up to 10 GiB)
* VirtIO Network Interface
* QXL Video Card (SPICE display)

### virtualbox
* VirtIO Network Interface

#### Customized installation

#### Minimal installation

* en_US.UTF-8
* keymap for standard US keyboard
* UTC timezone
* NTP enabled (default configuration)
* full-upgrade
* unattended-upgrades
* /dev/vda1 mounted on / using ext4 filesystem (all files in one partition)
* no swap
