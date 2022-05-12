FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS runtime

WORKDIR /app

#ENV ASPNETCORE_URLS=http://*:8080

#USER root 

COPY published/ ./

#RUN chown -R 1001:0 /app \
#&& chmod -R og+rwx /app

EXPOSE 8080

#USER 1001

ENTRYPOINT ["dotnet", "TodoApi.dll"]
