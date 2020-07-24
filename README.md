# Build headless VirtualBox in Docker Container for Ubuntu 18.04

## Introduction

Based on terse [Linux build instructions](https://www.virtualbox.org/wiki/Linux%20build%20instructions) from VirtualBox.


## Prerequisites

* Ubuntu 18.04
* Docker


## Usage

### Build Image and copy SO files to .

    docker build --tag vbox-build-image .
    docker run --name vbox-build-container vbox-build-image
    sudo docker cp vbox-build-container:/VirtualBox/out/linux.amd64/release/obj/VBoxPython/VBoxPython.so /usr/lib/virtualbox
    sudo docker cp vbox-build-container:/VirtualBox/out/linux.amd64/release/obj/VBoxPython3_8/VBoxPython3_8.so /usr/lib/virtualbox


### Install

TODO


##### FIXME
* unclear if `--build-headless` makes other params like `--disable-qt` redundant.


## References

* https://www.virtualbox.org/wiki/Linux%20build%20instructions
* http://dietrichschroff.blogspot.com/2010/05/building-virtualbox-from-scratch.html
