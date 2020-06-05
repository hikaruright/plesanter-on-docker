### ---------------------------
### Step1: Build source codes.
### ---------------------------

FROM centos:centos7
# FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
#FROM mcr.microsoft.com/dotnet/core/sdk:3.1

# Install Requirement Packages
RUN yum -y update \
 && yum install -y git wget unzip \
 && rpm -Uvh https://packages.microsoft.com/config/rhel/7/packages-microsoft-prod.rpm \
 && yum -y update \
 && yum -y install dotnet-sdk-3.1 \
 && yum install -y epel-release \
 && yum install -y libgdiplus

# Download built tools

RUN mkdir /web
ADD Pleasanter.NetCore_1.1.0.0.zip /
RUN unzip /Pleasanter.NetCore_1.1.0.0.zip
RUN mv /pleasanter/* /web

ADD startup.sh /
RUN chmod +x startup.sh

EXPOSE 5000

WORKDIR /

# WORKDIR /web/Implem.CodeDefiner
# RUN dotnet Implem.CodeDefiner.NetCore.dll _rds

ENTRYPOINT [ "/startup.sh" ]