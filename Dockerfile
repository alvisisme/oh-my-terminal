FROM alvisisme/ubuntu:18.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y git vim zsh tmux

COPY ./ /root/.oh-my-terminal/
RUN sh /root/.oh-my-terminal/install.sh
RUN chsh -s $(which zsh)

WORKDIR /root

ENTRYPOINT [ "/bin/zsh" ]
