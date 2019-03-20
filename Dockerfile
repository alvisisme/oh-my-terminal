FROM ubuntu:16.04
LABEL maintainer="Alvis Zhao <alvisisme@163.com>"
RUN apt-get update && \
    apt-get install -y git vim zsh tmux