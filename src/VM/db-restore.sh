#!/bin/bash
echo "DB Restore Context"
cd /home/eshopadmin/eShopOnWeb/src/Web
echo "changed directory to: $(pwd)"
dotnet restore
dotnet tool restore
dotnet ef database update -c catalogcontext -p ../Infrastructure/Infrastructure.csproj -s Web.csproj
dotnet ef database update -c appidentitydbcontext -p ../Infrastructure/Infrastructure.csproj -s Web.csproj