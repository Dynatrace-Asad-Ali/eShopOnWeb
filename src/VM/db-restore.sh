#!/bin/bash
cd /home/eshopadmin/eShopOnWeb/src/Web
DOTNET_CLI_HOME=~
dotnet restore
dotnet tool restore
dotnet ef database update -c catalogcontext -p ../Infrastructure/Infrastructure.csproj -s Web.csproj
dotnet ef database update -c appidentitydbcontext -p ../Infrastructure/Infrastructure.csproj -s Web.csproj
echo "DB context configured"
