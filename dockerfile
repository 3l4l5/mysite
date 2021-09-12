# 使用するubuntuのバージョンを指定
FROM ubuntu:18.04

# 使うコマンドをインストール
RUN \
    apt update && \
    apt -y upgrade && \
    apt install -y build-essential && \
    apt install -y software-properties-common && \
    apt install -y curl git man unzip vim wget sudo

RUN apt install -y apache2
RUN service apache2 start
