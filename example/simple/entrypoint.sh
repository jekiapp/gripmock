#!/usr/bin/env sh

# this file is used by .github/workflows/integration-test.yml

gripmock --stub=example/simple/stub example/simple/simple.proto &

# wait for generated files to be available and gripmock is up
sleep 20

echo "================="
cat /go/src/grpc/server.go
echo "================="
cat /go/src/grpc/go.mod
echo "================="
ls -R /go/src/
echo "================="


go run example/simple/client/*.go