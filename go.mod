module github.com/hashicorp/nomad-driver-lxc

go 1.12

replace (
	// fix Sirupsen/logrus vs sirupsen/logrus problems
	github.com/docker/docker v1.13.1 => github.com/docker/docker v0.7.3-0.20181219122643-d1117e8e1040
	github.com/opencontainers/runc v0.1.1 => github.com/opencontainers/runc v1.0.0-rc2.0.20181210164344-f5b99917df9f
)

require (
	github.com/LK4D4/joincontext v0.0.0-20171026170139-1724345da6d5 // indirect
	github.com/boltdb/bolt v1.3.1 // indirect
	github.com/fsouza/go-dockerclient v1.4.2 // indirect
	github.com/golangci/golangci-lint v1.17.1 // indirect
	github.com/gorhill/cronexpr v0.0.0-20180427100037-88b0669f7d75 // indirect
	github.com/hashicorp/consul v1.4.5 // indirect
	github.com/hashicorp/consul-template v0.20.0 // indirect
	github.com/hashicorp/go-hclog v0.9.2
	github.com/hashicorp/go-immutable-radix v1.1.0 // indirect
	github.com/hashicorp/go-plugin v1.0.1 // indirect
	github.com/hashicorp/go-version v1.2.0 // indirect
	github.com/hashicorp/hcl2 v0.0.0-20190702185634-5b39d9ff3a9a // indirect
	github.com/hashicorp/nomad v0.9.3
	github.com/hashicorp/raft v1.1.0 // indirect
	github.com/hashicorp/serf v0.8.3 // indirect
	github.com/hashicorp/vault/api v1.0.2 // indirect
	github.com/mitchellh/hashstructure v1.0.0 // indirect
	github.com/opencontainers/runc v0.1.1
	github.com/opencontainers/runtime-spec v1.0.1 // indirect
	github.com/shirou/gopsutil v2.18.12+incompatible // indirect
	github.com/sirupsen/logrus v1.4.2 // indirect
	github.com/stretchr/testify v1.3.0
	github.com/ugorji/go v0.0.0-20170620060102-0053ebfd9d0e // indirect
	golang.org/x/net v0.0.0-20190628185345-da137c7871d7 // indirect
	gopkg.in/lxc/go-lxc.v2 v2.0.0-20190625173123-f4822c6bba64
)
