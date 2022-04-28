FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build

WORKDIR /src
COPY *.sln ./
COPY ConversaoPeso.Web/ConversaoPeso.Web.csproj ConversaoPeso.Web/

RUN dotnet restore
COPY . .
WORKDIR /src/ConversaoPeso.Web
RUN dotnet build ConversaoPeso.Web.csproj -c Release -o /app

#FROM build AS publish
#RUN dotnet publish ConversaoPeso.Web.csproj -c Release -o /app

# FROM microsoft/dotnet-nightly:2.1-runtime-deps-alpine AS base
FROM build AS base
WORKDIR /app
COPY --from=build /app .
ENTRYPOINT ["dotnet","ConversaoPeso.Web.dll"]

#https://www.atlascode.com/blog/running-asp-net-core-in-an-alpine-linux-docker-container/