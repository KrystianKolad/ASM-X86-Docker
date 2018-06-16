# ASM dev container

FROM ubuntu:14.04

RUN apt-get clean && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -y && \
    apt-get clean

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y yasm gdb gcc vim curl make nano emacs && \
    apt-get clean

ENV TIMEZONE Europe/Oslo
RUN echo $TIMEZONE > /etc/timezone &&\
  cp /usr/share/zoneinfo/${TIMEZONE} /etc/localtime &&\
    DEBIAN_FRONTEND=noninteractive dpkg-reconfigure tzdata

RUN mkdir -p /home/asm/.vim/syntax
RUN groupadd -g 1000 asm && \
    useradd -d /home/asm -g 1000 asm
RUN chown -R 1000:1000 /home/asm
ENV HOME /home/asm

RUN curl -s https://raw.githubusercontent.com/Shirk/vim-gas/master/syntax/gas.vim > /home/asm/.vim/syntax/gas.vim
ADD .vimrc /home/asm/.vimrc

WORKDIR /workspace
ENTRYPOINT ["/bin/bash"]