
FROM microsoft/aspnetcore:1
LABEL Name=selflearning Version=0.0.1 
ARG source=.
WORKDIR /app
EXPOSE 8080
COPY $source .
ENTRYPOINT dotnet selflearning.dll
