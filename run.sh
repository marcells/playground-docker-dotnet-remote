#!/bin/bash
dotnet publish -c Debug -f netcoreapp1.1 -r debian.8-x64 -o ./publish
docker build -t jchannon/jsonfile --rm .
docker run -t --name json jchannon/jsonfile