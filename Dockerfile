FROM alpine:3.7

RUN apk update
RUN apk add vim make
WORKDIR /code
COPY . .
RUN make copy-vim-mac
# COPY vim /root/.vim
# COPY vimrc /root/.vimrc
