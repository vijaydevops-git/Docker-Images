FROM amazonlinux:latest
LABEL maintainer "Navaneeth Reddy Alavala <navaneethreddydevops@gmail.com>"
CMD ["/bin/bash"]
RUN  yum update -y  \
	 yum remove java-1.7.0-openjdk \
	 yum install java-1.8.0 \
	 wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo \
	 rpm — import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key \
	 yum install jenkins -y \
     service jenkins start \
     chkconfig jenkins on\
	systemctl start jenkins.service\
    systemctl enable jenkins.service\
EXPOSE 8080:8080
ENTRYPOINT [ "curl localhost:8080" ]

