# https://qiita.com/rotelstift/items/461920d672a939991c56
FROM ruby:2.7.1
ENV LANG="C.UTF-8"

ENV USER=shotaro
ENV HOME=/home/${USER}

RUN useradd -m ${USER}
RUN gpasswd -a ${USER} sudo
RUN echo "${USER}:password" | chpasswd

USER ${USER}
WORKDIR ${HOME}
COPY . ${HOME}

CMD ["/bin/bash"]

# docker build --tag atcoder .
# docker run --rm -it -v ${PWD}:/home/shotaro atcoder 