FROM ubuntu:18.04

RUN apt-get update && \ 
    apt-get install -y build-essential libssl-dev git zlib1g-dev && \
    apt-get clean

RUN useradd -m tester 
USER tester
WORKDIR /home/tester

RUN git clone https://github.com/wg/wrk.git && \
    cd wrk && \
    make && \
    cd ..

RUN git clone https://github.com/giltene/wrk2.git && \
    cd wrk2 && \
    make && \
    cd ..


CMD ["tail", "-f", "/dev/null"]

