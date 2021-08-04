FROM ubuntu:18.04

RUN apt update
RUN mkdir -p /tmp/ssh-script/
COPY  ./src/ /tmp/ssh-script/
RUN /tmp/ssh-script/install.sh

#set password
RUN echo 'root:root' |chpasswd

#replace sshd_config
RUN sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

#make .ssh
RUN mkdir /root/.ssh

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]

