FROM ubuntu
RUN apt-get update
RUN apt-get install tmux vim make gcc g++ build-essential curl wget  python3  python3-dev   python3-pip golang nodejs npm mono-complete openjdk-17-jdk openjdk-17-jre powerline fonts-powerline -y
RUN mv /usr/lib/python3.12/EXTERNALLY-MANAGED /usr/lib/python3.12/EXTERNALLY-
RUN apt-get install cmake -y
RUN apt-get install git -y
RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
RUN useradd  developer
RUN mkdir -p /home/developer
RUN chmod  -R 777 /home/developer
USER developer
WORKDIR /home/developer
RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
COPY vimrc .vimrc
RUN vim +PluginInstall +qall
RUN echo 'set -g default-terminal "screen-256color"' > .tmux.conf
RUN python3 .vim/bundle/YouCompleteMe/install.py --all
USER root
RUN rm -rf /root/.vim*
RUN mv /home/developer/.vim* /root/
WORKDIR /root
RUN echo "[ -f /usr/share/powerline/bindings/bash/powerline.sh ] && source /usr/share/powerline/bindings/bash/powerline.sh" >> .bashrc
