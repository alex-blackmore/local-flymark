FROM docker.io/rust:1-slim-trixie

RUN apt update
RUN apt install -y curl build-essential pkg-config libssl-dev git tmux
# RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN /root/.cargo/bin/cargo install flymark

WORKDIR /marking
