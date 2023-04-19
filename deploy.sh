#!/bin/bash

cp -r ./app ./infra/lambda
cd ./infra/

terraform apply --auto-approve
rm -r ./lambda/app


