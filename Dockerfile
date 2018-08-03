##
# geodata/mapserver
#
# MapServer compiled with a broad range of options enabled including a
# comprehensive GDAL library.
#

FROM geodata/gdal:latest

USER root

# The git tag to checkout
ARG GIT_TAG=master

# Install the application.
ADD . /tmp/build/
RUN /tmp/build/build.sh

EXPOSE 80

# Start the fcgi and web servers.
CMD ["/usr/local/bin/run.sh"]
