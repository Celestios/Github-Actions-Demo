FROM mcr.microsoft.com/dotnet/core/sdk:3.1

#metadata for searchability
LABEL "com.github.actions.name"="Example Action"  

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
