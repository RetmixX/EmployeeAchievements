FROM silkeh/clang as build

RUN apt-get update && \
    apt-get install -y \
    libpqxx-dev \
    cmake

COPY InitDB/src /app/src

WORKDIR /app/src/build

RUN cmake .. && \
    make

FROM ubuntu:latest
WORKDIR /app

RUN apt-get update && \
    apt-get install -y \
    libpqxx-dev

COPY --from=build /app/src/build/InitDB /app/project/pr/start
COPY InitDB/sql /app/sql
ENTRYPOINT ["./start user=postgres password=postgres dbname=postgres host=db port= --seed=NO"]
