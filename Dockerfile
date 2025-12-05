FROM debian:13.2

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    gcc \
    g++ \
    && rm -rf /var/lib/apt/lists/*

COPY . /build

RUN cmake -B /build/build -S /build && \
    cmake --build /build/build && \
    mkdir -p /app && \
    cp /build/build/hello_world /app/hello_world

CMD ["/app/hello_world"]
