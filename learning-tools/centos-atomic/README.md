# Learning Tools: CentOS Atomic Host

Everything in this folder is focused around CentOS Atomic Host.

## Contents

**docker-cloudinit**: This folder provides an example of how to use `cloud-init` to customize the Docker daemon on a CentOS Atomic Host instance on AWS.

**docker-tcp**: This folder is about customizing the behavior and configuration of the Docker Engine daemon on CentOS Atomic Host, but without modifying the built-in systemd unit file(s).

**docker-tcp-ansible**: This folder is similar to `docker-tcp`, but using Ansible for the customization instead of a shell script.
