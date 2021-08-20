from ubuntu:bionic-20210723
RUN apt-get update && apt-get install -y cmake g++ wget
RUN mkdir -p /src/vectorclass && wget -qO- https://github.com/vectorclass/version2/archive/refs/tags/v2.01.04.tar.gz | tar -xvz -C /src/vectorclass --strip-components 1
RUN apt-get -y --autoremove --purge remove wget && \
    rm -rf /var/lib/apt/lists/*
COPY . /src
RUN mkdir build && \
    cd build && \
    cmake -DCMAKE_BUILD_TYPE=Debug ../src && \
    cmake --build .
