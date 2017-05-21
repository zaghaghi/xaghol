FROM ubuntu:16.04

RUN apt-get update
RUN apt-get update
RUN apt-get install -y wget
RUN wget https://pocoproject.org/releases/poco-1.7.8/poco-1.7.8p2-all.tar.gz
RUN apt-get install -y build-essential
RUN tar xzf poco-1.7.8p2-all.tar.gz
WORKDIR poco-1.7.8p2-all
RUN ./configure --omit=NetSSL_OpenSSL,Crypto,Data/ODBC,Data/MySQL
RUN make && make install
WORKDIR ..
RUN rm -rf poco-1.7.8p2-all
