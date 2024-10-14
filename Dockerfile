FROM ubuntu
RUN apt-get update
RUN apt-get install tmux vim make gcc g++ build-essential curl wget  python3  python3-dev   python3-pip -y
RUN mv /usr/lib/python3.12/EXTERNALLY-MANAGED /usr/lib/python3.12/EXTERNALLY-
RUN apt-get install cmake -y
RUN apt-get install git -y
RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
RUN useradd  developer
RUN mkdir -p /home/developer
RUN chmod  -R 777 /home/developer
USER developer
WORKDIR /home/developer
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
RUN bash -c "source .nvm/nvm.sh && nvm install 20"
RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
COPY vimrc .vimrc
RUN vim +PluginInstall +qall
RUN echo 'set -g default-terminal "screen-256color"' > .tmux.conf
RUN python3 .vim/bundle/YouCompleteMe/install.py --ts-completer

