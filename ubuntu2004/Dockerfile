# Molecule managed

FROM ubuntu:20.04

ENV container docker
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install --no-install-recommends -y python3 procps sudo bash ca-certificates iproute2 python3-apt aptitude systemd systemd-sysv cron \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    apt-get -y autoremove

RUN rm -f /lib/systemd/system/multi-user.target.wants/* \
    /etc/systemd/system/*.wants/* \
    /lib/systemd/system/local-fs.target.wants/* \
    /lib/systemd/system/sockets.target.wants/*udev* \
    /lib/systemd/system/sockets.target.wants/*initctl* \
    /lib/systemd/system/sysinit.target.wants/systemd-tmpfiles-setup* \
    /lib/systemd/system/systemd-update-utmp*

RUN systemctl set-default multi-user.target

# VOLUME [ "/sys/fs/cgroup" ]

CMD [ "/lib/systemd/systemd", "log-level=info", "unit=sysinit.target" ]
