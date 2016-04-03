############################################################
# percona flavored mongodb dockerfile for CAPES
# centos:latest base
############################################################

# set base image
FROM percona/percona-server-mongodb

# Update the repository sources list
RUN yum -y update && yum clean all 
#RUN yum -y install freeIPA-client && yum clean all

# USER mongodb


##################### INSTALLATION END #####################

# Expose the default port
EXPOSE 27017

# Default port to execute the entrypoint (MongoDB)
# CMD ["--port 27017"]

# Set default container command
ENTRYPOINT usr/bin/mongod
