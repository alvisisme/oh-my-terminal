FROM alvisisme/docker-ubuntu-1604-163
LABEL maintainer="Alvis Zhao <alvisisme@163.com>"

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y git vim zsh tmux

COPY ./ /root/.oh-my-terminal/
RUN sh /root/.oh-my-terminal/install.sh

ENTRYPOINT [ "/bin/zsh" ]