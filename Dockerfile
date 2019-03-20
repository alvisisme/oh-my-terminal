FROM alvisisme/docker-ubuntu-1604-163
LABEL maintainer="Alvis Zhao <alvisisme@163.com>"
RUN apt-get update && \
    apt-get install -y git vim zsh tmux && \
    chsh -s $(which zsh)

COPY zsh /root/.oh-my-zsh
COPY zsh/templates/zshrc.zsh-template /root/.zshrc
COPY tmux/.tmux.conf /root/.tmux.conf
COPY tmux/.tmux.conf.local /root/.tmux.conf.local
COPY vim /root/.vim_runtime
RUN sh /root/.vim_runtime/install_basic_vimrc.sh

ENTRYPOINT [ "/bin/zsh" ]