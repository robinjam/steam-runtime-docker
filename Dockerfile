ARG UBUNTU
FROM ${UBUNTU}

ARG SOURCE
COPY ${SOURCE} /etc/apt/sources.list.d/
COPY valve.asc /

RUN cat /valve.asc | apt-key add -
RUN rm -f /valve.asc

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y steamrt-dev

CMD ["/bin/bash"]
