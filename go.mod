module github.com/hashicorp/nomad-driver-lxc

go 1.12

replace (
	github.com/Sirupsen/logrus v1.0.5 => github.com/sirupsen/logrus v1.0.5
	github.com/Sirupsen/logrus v1.3.0 => github.com/Sirupsen/logrus v1.0.6
	github.com/Sirupsen/logrus v1.4.0 => github.com/sirupsen/logrus v1.0.6
)

require (
	github.com/LK4D4/joincontext v0.0.0-20171026170139-1724345da6d5 // indirect
	github.com/Sirupsen/logrus v1.4.0 // indirect
	github.com/boltdb/bolt v1.3.1 // indirect
	github.com/fsouza/go-dockerclient v1.4.1 // indirect
	github.com/gorhill/cronexpr v0.0.0-20180427100037-88b0669f7d75 // indirect
	github.com/hashicorp/consul-template v0.20.0 // indirect
	github.com/hashicorp/consul/api v1.1.0 // indirect
	github.com/hashicorp/go-hclog v0.9.2
	github.com/hashicorp/go-immutable-radix v1.1.0 // indirect
	github.com/hashicorp/go-plugin v1.0.1 // indirect
	github.com/hashicorp/go-version v1.2.0 // indirect
	github.com/hashicorp/hcl2 v0.0.0-20190702185634-5b39d9ff3a9a // indirect
	github.com/hashicorp/nomad v0.9.3
	github.com/hashicorp/raft v1.1.0 // indirect
	github.com/hashicorp/vault/api v1.0.2 // indirect
	github.com/mitchellh/hashstructure v1.0.0 // indirect
	github.com/opencontainers/runc v0.1.1
	github.com/shirou/gopsutil v2.18.12+incompatible // indirect
	github.com/stretchr/testify v1.3.0
	github.com/ugorji/go v0.0.0-20170620060102-0053ebfd9d0e // indirect
	golang.org/x/crypto v0.0.0-20190701094942-4def268fd1a4 // indirect
	golang.org/x/net v0.0.0-20190628185345-da137c7871d7 // indirect
	golang.org/x/sys v0.0.0-20190626221950-04f50cda93cb // indirect
	google.golang.org/appengine v1.4.0 // indirect
	google.golang.org/grpc v1.21.1 // indirect
	gopkg.in/lxc/go-lxc.v2 v2.0.0-20190625173123-f4822c6bba64
)
