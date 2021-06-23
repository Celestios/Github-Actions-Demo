FROM mcr.microsoft.com/dotnet/core/sdk:3.1

#metadata for searchability
LABEL "com.github.actions.name"="Example Action"

RUN apt-get update && apt-get install -y jq
RUN dotnet tool install -g GitReleaseManager.Tool

ENV PATH /root/.dotnet/tools:$PATH

COPY entrypoint.sh /
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
