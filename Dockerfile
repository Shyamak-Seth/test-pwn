FROM ubuntu:22.04

RUN apt-get update && apt-get install -y gcc
RUN useradd -m ctfuser

WORKDIR /home/ctfuser

COPY program.c .
COPY flag.txt .
COPY ynetd .

RUN gcc -o /home/ctfuser/program /home/ctfuser/program.c -fno-stack-protector -no-pie
RUN chmod +x /home/ctfuser/program

USER ctfuser
EXPOSE 3000

CMD ./ynetd -p 3000 ./program