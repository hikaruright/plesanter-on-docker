### ---------------------------
### Step1: Build source codes.
### ---------------------------

FROM mcr.microsoft.com/dotnet/core/sdk:3.1 as build

WORKDIR /

RUN git clone https://github.com/Implem/Implem.Pleasanter.NetCore.git plesanter

WORKDIR /plesanter/cmdnetcore

RUN chmod +x build.sh && ./build.sh

WORKDIR /plesanter/publish

RUN ls

FROM mcr.microsoft.com/dotnet/core/runtime:3.1-buster-slim as runtime

RUN mkdir /web

COPY --from=build /plesanter/publish/Implem.CodeDefiner /web
COPY --from=build /plesanter/publish/Implem.Pleasanter /web

ADD startup.sh /
RUN chmod +x startup.sh

EXPOSE 5000

WORKDIR /

# WORKDIR /web/Implem.CodeDefiner
# RUN dotnet Implem.CodeDefiner.NetCore.dll _rds

ENTRYPOINT [ "/startup.sh" ]