#!/bin/bash

rm -rf ./durable/iris_conf.d

docker run --init --name iris --rm -it \
           --volume $PWD/durable:/dur \
           --env ISC_DATA_DIRECTORY=/dur/iris_conf.d \
           --env ISC_CPF_MERGE_FILE=/dur/merge/merge.cpf \
           store/intersystems/irishealth-community:2019.4.0.383.0