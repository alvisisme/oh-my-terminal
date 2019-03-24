FROM alvisisme/docker-ubuntu-1604-163

LABEL maintainer="Alvis Zhao <alvisisme@163.com>"

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y vim zsh tmux

COPY zsh /root/.oh-my-terminal/zsh
COPY tmux /root/.oh-my-terminal/tmux
COPY vim /root/.oh-my-terminal/vim
COPY setup.sh /root/.oh-my-terminal/setup.sh
RUN sh /root/.oh-my-terminal/setup.sh

ENTRYPOINT [ "/bin/zsh" ]