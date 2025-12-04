FROM alpine:3.23.0

RUN apk add --no-cache clang cmake make

COPY . /build

RUN cmake -B /build/build -S /build && \
    cmake --build /build/build && \
    mkdir -p /app && \
    cp /build/build/hello_world /app/hello_world

CMD ["/app/hello_world"]
