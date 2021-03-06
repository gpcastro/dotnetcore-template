#!/usr/bin/env bash
cd src
sudo rm -rf bin obj publish
docker run --rm -v $(pwd):/src -w /src microsoft/dotnet:2.1-sdk /bin/bash -c "dotnet restore && dotnet publish -o publish"
cd publish
zip -r ../../bin.zip *
