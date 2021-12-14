FROM centos:7
RUN yum -y install wget
RUN wget https://releases.jfrog.io/artifactory/artifactory-rpms/artifactory-rpms.repo -O jfrog-artifactory-rpms.repo
RUN mv jfrog-artifactory-rpms.repo /etc/yum.repos.d/
RUN yum -y update
RUN yum -y install jfrog-artifactory-oss
EXPOSE 8080
EXPOSE 8081
EXPOSE 8082
ENTRYPOINT ["/opt/jfrog/artifactory/app/bin/artifactory.sh"]

