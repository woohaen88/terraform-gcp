#!/usr/bin/env bash

terraform plan -out tfplan && terraform apply tfplan