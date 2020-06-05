#!/bin/bash

dotnet /web/Implem.CodeDefiner/Implem.CodeDefiner.NetCore.dll _rds

cd /web/Implem.Pleasanter
dotnet Implem.Pleasanter.NetCore.dll