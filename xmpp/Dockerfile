FROM centos:7

USER root
##Take care of the yum stuff that's nessessary###
RUN yum -y install deltarpm \
&& yum -y update \
&& yum -y install wget

###Create a /data directory and do stuff in it###
RUN mkdir /data \
&& cd /data \
&& wget http://download.igniterealtime.org/openfire/openfire-3.9.3-1.i386.rpm \
&& yum -y install /data/openfire-3.9.3-1.i386.rpm \
&& yum -y install glibc.i686 
CMD sh /opt/openfire/bin/openfire.sh
RUN useradd openfire

###Getting postgresql and configuring it
#RUN yum install -y postgresql postgresql-server postgresql-devel postgresql-libs

#RUN useradd openfire -G postgres \
#&& chown -R openfire /opt/openfire/

#USER postgres

#ADD ./startPost.sh /data/startPost.sh
#RUN sh /data/startPost.sh 

#RUN createdb openfire && \
#createuser openfire && \
#psql -U postgres -d postgres -c "ALTER USER postgres WITH PASSWORD 'password';"

#ADD pg_hba.conf /var/lib/pgsql/data/pg_hba.conf

EXPOSE 9090/tcp 9091/tcp
