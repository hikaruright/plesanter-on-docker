#!/bin/bash

# Execute dotnet dll
dotnet /web/Implem.CodeDefiner/Implem.CodeDefiner.NetCore.dll _rds

cd /web/Implem.Pleasanter
dotnet Implem.Pleasanter.NetCore.dll