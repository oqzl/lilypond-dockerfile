FROM ubuntu:bionic

COPY entrypoint /entrypoint

RUN sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu/%http://ftp.jaist.ac.jp/pub/Linux/ubuntu/%g" /etc/apt/sources.list \
  && apt update \
  && ACCEPT_EULA=y apt install -y \
  fonts-noto \
  fonts-ipafont \
  fonts-ipaexfont \
  fonts-vlgothic \
  fonts-takao \
  fonts-hanazono \
  fonts-horai-umefont \
  fonts-komatuna \
  fonts-konatu \
  fonts-migmix \
  fonts-motoya-l-cedar \
  fonts-motoya-l-maruberi \
  fonts-mplus \
  fonts-sawarabi-gothic \
  fonts-sawarabi-mincho \
  fonts-umeplus \
  fonts-dejima-mincho \
  fonts-misaki \
  fonts-mona \
  fonts-monapo \
  fonts-oradano-mincho-gsrr \
  fonts-kiloji \
  fonts-mikachan \
  fonts-seto \
  fonts-yozvox-yozfont \
  fonts-aoyagi-kouzan-t \
  fonts-aoyagi-soseki \
  fonts-kouzan-mouhitsu \
  ttf-mscorefonts-installer \
  && apt -y install wget \
  && wget https://lilypond.org/download/binaries/linux-64/lilypond-2.22.1-1.linux-64.sh \
  && bash lilypond-2.22.1-1.linux-64.sh \
  && chmod +x /entrypoint

ENTRYPOINT ["/entrypoint"]
