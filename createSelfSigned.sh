#!/usr/bin/env bash
openssl req -new -sha256 -nodes -out server.csr -newkey ec:<(openssl ecparam -name secp384r1) -keyout server.key -config server.csr.cnf
openssl x509 -req -in server.csr -CA rootCA.pem -CAkey rootCA.key -CAcreateserial -out server.crt -days 90 -sha256 -extfile v3.ext
