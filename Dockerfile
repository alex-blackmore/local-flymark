FROM ubuntu

RUN apt update
RUN apt install -y curl build-essential pkg-config libssl-dev git tmux
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"
RUN cargo install flymark

RUN mkdir /marking
WORKDIR /marking


ENTRYPOINT ["tmux", "new-session"]
# change marking criteria name, course code, term
# CMD ["flymark", "q1.txt", "cs1531", "25T2"]
