# Container image that runs your code
FROM mcr.microsoft.com/dotnet/sdk:2.1

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/Lachee/Unity-Package-Exporter.git /unity-package-exporter

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]