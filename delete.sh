#!/bin/bash

cp -r ./app ./infra/lambda
cd ./infra/

terraform destroy --auto-approve
rm -r ./lambda/app
