FROM xales/byond:512-latest


ENV PATH=/root/cargo/bin:/root/rustup/bin:$PATH\
	CARGO_HOME=/root/cargo\
	RUSTUP_HOME=/root/rustup

RUN apt-get update && apt-get install -y curl git gcc-multilib;\
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -o rustup-init; \
	chmod +x rustup-init; \
	./rustup-init -y --no-modify-path;\
	rm rustup-init;\
	rustup default stable;\
	rustup target add i686-unknown-linux-gnu

RUN git clone https://github.com/Lohikar/byhttp.git || true
WORKDIR /byhttp
RUN mkdir to_copy;\
	cargo build --release --target i686-unknown-linux-gnu;\
	mv -t to_copy target/i686-unknown-linux-gnu/release/libbyhttp.so || true

FROM xales/byond:512-latest

ARG BUILD_ARGS
ENV RUNAS=root

COPY . /boh
COPY --from=0 /byhttp/to_copy /boh/lib

WORKDIR /boh
RUN apt-get update && apt-get install -y gosu
RUN scripts/dm.sh $BUILD_ARGS bastionofhestia.dme

EXPOSE 8000
VOLUME /boh/data
VOLUME /boh/config

ENTRYPOINT ["./docker-entrypoint.sh"]
