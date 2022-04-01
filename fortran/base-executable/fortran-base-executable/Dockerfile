FROM debian:buster-slim
COPY src/fuzzme.f90 .
RUN apt-get update && \
    apt-get install -fy gfortran && \
    gfortran fuzzme.f90 -o /fuzzme
COPY tests/seed.txt /tests/seed.txt

# Set to fuzz!
ENTRYPOINT []
CMD ["/fuzzme", "@@"]
