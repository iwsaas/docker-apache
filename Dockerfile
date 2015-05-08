FROM iwsaas/centos:7.1
MAINTAINER Henry Huang <henry.s.huang@gmail.com>

RUN yum -y install ca-certificates; yum clean all
RUN yum -y update; yum clean all
RUN yum -y install httpd; yum clean all

EXPOSE 80
CMD [ "/usr/sbin/httpd", "start"]
