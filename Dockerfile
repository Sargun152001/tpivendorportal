# Use official ASP.NET runtime base image for .NET 7
FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS base
WORKDIR /app

# Copy all files from your local directory to /app in the container
COPY . .

# Expose port 80 for HTTP access
EXPOSE 80

# Set the entry point to run your compiled DLL
ENTRYPOINT ["dotnet", "Alletec.Pfx.WebClient.dll"]
