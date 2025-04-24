#!/usr/bin/env sh

# this file is used by .github/workflows/integration-test.yml

gripmock --stub=example/simple/stub example/simple/simple.proto &

cat go.mod

ls protogen/example/simple

# wait for generated files to be available and gripmock is up
sleep 20

go run example/simple/client/*.go