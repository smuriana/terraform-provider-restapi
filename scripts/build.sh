#!/usr/bin/env bash
HOSTNAME=terraform.local
NAMESPACE=local
NAME=restapi
BINARY=terraform-provider-${NAME}
VERSION=1.0.0
OS_ARCH=linux_amd64

rm .terraform.lock.hcl
rm ~/.terraform.d/plugins/${HOSTNAME}/${NAMESPACE}/${NAME}/${VERSION}/${OS_ARCH}/${BINARY}_v${VERSION}
go mod init ${BINARY}_v${VERSION}
go mod tidy
make
terraform init
terraform plan