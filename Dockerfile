FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
WORKDIR /app
EXPOSE 8080
EXPOSE 8443
COPY ./app/publish/ .

ENV ASPNETCORE_ENVIRONMENT="Development"

ENTRYPOINT ["dotnet", "helloworldmvc.dll"]
