FROM mcr.microsoft.com/dotnet/core/sdk:3.1

#metadata for searchability
LABEL "com.github.actions.name"="Example Action"

RUN dotnet tool install -g GitReleaseManager.Tool

ENV PATH /root/.dotnet/tools:$PATH

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
