FROM ubuntu:bionic

COPY entrypoint /entrypoint

# RUN sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu/%http://ftp.jaist.ac.jp/pub/Linux/ubuntu/%g" /etc/apt/sources.list \
#   && apt update \
#   && apt -y install lilypond \
#   && chmod +x /entrypoint

RUN wget https://lilypond.org/download/binaries/linux-64/lilypond-2.22.1-1.linux-64.sh \
  && bash lilypond-2.22.1-1.linux-64.sh \
  && chmod +x /entrypoint

ENTRYPOINT ["/entrypoint"]
