#!/bin/bash

# Assumptions: vault is already initialized. Please, confirm this step!!

# Node setup
$NODE=node1

# Fetching first three keys to unseal the vault
KEY_1=base64_1st-third-encryption-key-comes-here
KEY_2=base64_2nd-third-encryption-key-comes-here
KEY_3=base64_3rd-third-encryption-key-comes-here

# Unseal using first key
curl --silent -X PUT \
	http://$NODE:8200/v1/sys/unseal \
	-H 'cache-control: no-cache' \
	-H 'content-type: application/json' \
	-d '{ "key": "'$KEY_1'" }'

# Unseal using second key
curl --silent -X PUT \
	http://$NODE:8200/v1/sys/unseal \
	-H 'cache-control: no-cache' \
	-H 'content-type: application/json' \
	-d '{ "key": "'$KEY_2'" }'

# Unseal using third key
curl --silent -X PUT \
	http://$NODE:8200/v1/sys/unseal \
	-H 'cache-control: no-cache' \
	-H 'content-type: application/json' \
	-d '{ "key": "'$KEY_3'" }'
