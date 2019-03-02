FROM mcr.microsoft.com/dotnet/core/sdk:2.2 AS build
WORKDIR /app

# copy csproj and restore as distinct layers
COPY app/src/*.sln .
COPY app/src/Kicker.Stats/*.csproj ./Kicker.Stats/
RUN dotnet restore

# copy everything else and build app
COPY app/src/Kicker.Stats/. ./Kicker.Stats/
WORKDIR /app/Kicker.Stats
RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/core/aspnet:2.2 AS runtime
WORKDIR /app
COPY --from=build /app/Kicker.Stats/out ./
ENTRYPOINT ["dotnet", "Kicker.Stats.dll"]
