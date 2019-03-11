# Generic Debian 8.x ("Jessie") VM

These files were created to allow users to use Vagrant ([http://www.vagrantup.com](http://www.vagrantup.com)) to quickly and easily spin up a generic Debian 8.x ("Jessie") VM. This configuration was tested with VirtualBox, VMware Fusion, and the Vagrant Libvirt provider.

**NOTE:** There's really nothing special here; I created these files because I often had a need to quickly and easily spin up a generic Debian VM for some purpose (building a package or testing a command). I'm including them here just for the sake of completeness.

## Contents

* **machines.yml**: This YAML file contains a list of VM definitions and associated configuration data. It is referenced by `Vagrantfile` when Vagrant instantiates the VMs.

* **README.md**: This file you're currently reading.

* **Vagrantfile**: This file is used by Vagrant to spin up the virtual machines. This file is fairly extensively commented to help explain what's happening. You should be able to use this file unchanged; all the VM configuration options are stored outside this file.

## Instructions

These instructions assume you've already installed your virtualization provider (VMware Fusion/Workstation or VirtualBox), Vagrant, and any necessary plugins (such as the Vagrant VMware plugin). Please refer to the documentation for those products for more information on installation or configuration.

1. Use `vagrant box add` to add a 64-bit Debian 8.x ("Jessie") base box to be used by this `Vagrantfile`. You'll need to specify a box that provides support for the virtualization provider you're planning to use. The `machines.yml` file provides some suggested boxes to use.

2. Edit the `machines.yml` file to ensure the box you downloaded in step 1 is specified on the "box:" section of this file. The "vmw" line is for a VMware-formatted box, the "vb" line is for the name of a VirtualBox-formatted box, and the "lv" line is for the name of a box that supports the Libvirt provider. Edit the appropriate line based on your virtualization provider and the name of the box you added in step 1.

3. Run `vagrant up`, and when the VM is up use `vagrant ssh` to access the VM.

Enjoy!
