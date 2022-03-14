# syntax=docker/dockerfile:1
FROM mcr.microsoft.com/mssql/server:2019-latest AS build-env
WORKDIR /sql


# Build runtime image
FROM mcr.microsoft.com/mssql/server:2019-latest
WORKDIR /sql

CMD -e "ACCEPT_EULA=Y", -e "SA_PASSWORD=$SA_PASSWORD", -p "$PORT", --name ${HEROKU_APP_NAME}.herokuapp.com, --hostname ${HEROKU_APP_NAME}.herokuapp.com ${HEROKU_APP_NAME}
