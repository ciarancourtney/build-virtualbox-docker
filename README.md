# Build headless VirtualBox in Docker Container for Ubuntu 18.04

## Introduction

Based on terse [Linux build instructions](https://www.virtualbox.org/wiki/Linux%20build%20instructions) from VirtualBox.


## Prerequisites

* Ubuntu 18.04
* Docker


## Usage

### Build Image

    docker build --tag vbox-build-image .

### Run Image as Container

    docker run --name vbox-build-container vbox-build-image


### Install

TODO


##### FIXME
* unclear if `--build-headless` makes other params like `--disable-qt` redundant.


## References

* https://www.virtualbox.org/wiki/Linux%20build%20instructions
* http://dietrichschroff.blogspot.com/2010/05/building-virtualbox-from-scratch.html
