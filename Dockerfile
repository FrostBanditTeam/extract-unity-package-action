# Container image that runs your code
FROM mcr.microsoft.com/dotnet/runtime:5.0

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/Lachee/Unity-Package-Exporter.git

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]