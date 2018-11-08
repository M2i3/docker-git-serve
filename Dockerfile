# A very simple git server to deploy configuration

FROM debian:stretch
MAINTAINER Jean-Marc Lagace <jean-marc@m2i3.com>

RUN apt-get update && apt-get install -y git-daemon-run && apt-get clean && apt-get autoclean

# add the startup script
ADD start.sh /start.sh
RUN chmod +x /start.sh

# allow the repository to be persistent
VOLUME /srv/repos.git

# Expose ports.
EXPOSE 9418

# Define default command.
CMD ["/start.sh"]
