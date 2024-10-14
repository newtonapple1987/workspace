FROM ubuntu
RUN apt-get update
RUN apt-get install tmux vim make gcc g++ build-essential curl wget  python3  python3-dev   python3-pip  nodejs  npm -y
RUN npm install create-react-app -g
RUN mv /usr/lib/python3.12/EXTERNALLY-MANAGED /usr/lib/python3.12/EXTERNALLY-
RUN pip install ipython scikit-learn numpy pandas notebook
RUN apt-get install cmake -y
RUN apt-get install golang -y
RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
RUN useradd  developer
USER developer
WORKDIR /home/developer
RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
COPY vimrc .vimrc
RUN vim +PluginInstall +qall
RUN echo 'set -g default-terminal "screen-256color"' > .tmux.conf
RUN python3 /home/developer/.vim/bundle/YouCompleteMe/install.py  --ts-completer  --go-completer

