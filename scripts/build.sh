#!/usr/bin/env bash
rm .terraform.lock.hcl
go mod tidy
make
terraform init
terraform plan