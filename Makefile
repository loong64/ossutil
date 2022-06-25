NAME=ossutil
BUILDDIR=build

GOOS:=$(shell go env GOOS)
GOARCH:=$(shell go env GOARCH)

LDFLAGS+=-w -s

GO_BUILD=CGO_ENABLED=0 go build -trimpath -ldflags "${LDFLAGS}"

build:
	GOARCH=$(GOARCH) GOOS=$(GOOS) $(GO_BUILD) -o $(BUILDDIR)/$(NAME)

all: $(build)
