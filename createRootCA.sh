#!/usr/bin/env bash
openssl ecparam -out localRootCA.key -name prime256v1 -genkey
openssl req -x509 -new -nodes -key localRootCA.key -sha256 -days 365 -out localRootCA.pem
