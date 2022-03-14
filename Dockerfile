# syntax=docker/dockerfile:1
FROM mcr.microsoft.com/mssql/server:2019-latest AS build-env
WORKDIR /sql


# Build runtime image
FROM mcr.microsoft.com/mssql/server:2019-latest
WORKDIR /sql

#CMD ["-p", "$PORT"]
