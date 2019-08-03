PROJECT_ROOT := $(patsubst %/,%,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))

default: build

.PHONY: clean
clean: ## Remove build artifacts
	go clean
	rm -rf $(PROJECT_ROOT)/pkg
	rm -rf $(PROJECT_ROOT)/build

.PHONY: build
build:
	go install

.PHONY: test
test:
	@echo "==> Running tests..."
	mkdir -p $(PROJECT_ROOT)/build/test
	$(PROJECT_ROOT)/build/gotestsum --junitfile $(PROJECT_ROOT)/build/test/resultx.ml -- -timeout=15m ./...

.PHONY: fmt
fmt:
	@echo "==> Fixing source code with gofmt..."
	gofmt -s -w ./lxc

.PHONY: bootstrap
bootstrap: deps # install all dependencies

.PHONY: deps
deps:  ## Install build and development dependencies
	mkdir -p build
	go version
	@echo "==> Download build dependencies..."
	go mod download
	@echo "==> Installing golangci-lint..."
	GOBIN=$(PROJECT_ROOT)/build GO111MODULE=on go get github.com/golangci/golangci-lint/cmd/golangci-lint@v1.17.1
	@echo "==> Installing gotestsum..."
	GOBIN=$(PROJECT_ROOT)/build GO111MODULE=on go get -u gotest.tools/gotestsum@v0.3.5

.PHONY: check
check: ## Lint the source code
	@echo "==> Linting source code..."
	$(PROJECT_ROOT)/build/golangci-lint run

.PHONY: changelogfmt
changelogfmt:
	@echo "--> Making [GH-xxxx] references clickable..."
	@sed -E 's|([^\[])\[GH-([0-9]+)\]|\1[[GH-\2](https://github.com/hashicorp/nomad/issues/\2)]|g' CHANGELOG.md > changelog.tmp && mv changelog.tmp CHANGELOG.md

.PHONY: travis
travis: check test

ALL_TARGETS += linux_amd64

# Define package targets for each of the build targets we actually have on this system
define makePackageTarget

pkg/$(1).zip: pkg/$(1)/nomad-driver-lxc
	@echo "==> Packaging for $(1)..."
	@zip -j pkg/$(1).zip pkg/$(1)/*

endef

# Reify the package targets
$(foreach t,$(ALL_TARGETS),$(eval $(call makePackageTarget,$(t))))

pkg/linux_amd64/nomad-driver-lxc:
	./scripts/build.sh

.PHONY: dev
dev: clean pkg/linux_amd64/nomad-driver-lxc

.PHONY: release
release: clean pkg/linux_amd64.zip
	@echo "==> Result:"
	@tree --dirsfirst $(PROJECT_ROOT)/pkg
