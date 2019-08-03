Nomad LXC Driver
==================

[![License: MPL 2.0](https://img.shields.io/badge/License-MPL%202.0-brightgreen.svg)](https://opensource.org/licenses/MPL-2.0) 
[![CircleCI](https://circleci.com/gh/pascomnet/nomad-driver-lxc.svg?style=shield)](https://circleci.com/gh/pascomnet/nomad-driver-lxc)

*This is a enhanced fork of hashicorp/nomad-driver-lxc*

Binaries
------------

You can grab the latest development binaries from the [Circleci build](https://circleci.com/gh/pascomnet/nomad-driver-lxc) (see "Artifacts" tab)

Runtime Dependencies
------------

- [Nomad](https://www.nomadproject.io/downloads.html) 0.9+
- Linux host with `liblxc` and `lxc-templates` packages installed

Building The Driver
---------------------

[Go](https://golang.org/doc/install) 1.12 is recommended.

This project has a go.mod definition. So you can clone it to whatever directory you want.
It is not necessary to setup a go path at all.

```sh
make release
```

Using the driver
----------------------

- [Documentation](https://www.nomadproject.io/docs/drivers/external/lxc.html)
- [Guide](https://www.nomadproject.io/guides/external/lxc.html)

Developing the Provider
---------------------------

If you wish to work on the driver, you'll first need [Go](http://www.golang.org) installed on your machine, and have have `lxc-dev` and `lxc-templates` packages installed. You'll also need to correctly setup a [GOPATH](http://golang.org/doc/code.html#GOPATH), as well as adding `$GOPATH/bin` to your `$PATH`.

To compile the provider, run `make dev`. This will build the provider into $project/pkg/linux_amd64/nomad-driver-lxc.

```sh
$ make dev
```

In order to test the provider, you can simply run `make test`.

```sh
$ make test
```
