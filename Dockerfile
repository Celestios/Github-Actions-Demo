FROM mcr.microsoft.com/dotnet/core/sdk:3.1

LABEL "com.github.actions.name"="Example Action" -- metadata for searchability

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
