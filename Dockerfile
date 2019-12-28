from ubuntu:bionic

copy entrypoint /entrypoint

run sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu/%http://ftp.jaist.ac.jp/pub/Linux/ubuntu/%g" /etc/apt/sources.list \
  && apt update \
  && apt -y install lilypond \
  && chmod +x /entrypoint

entrypoint ["/entrypoint"]
