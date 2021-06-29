FROM debian:buster-slim
COPY src/fuzzme.f90 .
RUN apt-get update && \
    apt-get install -fy gfortran && \
    gfortran fuzzme.f90 -o /fuzzme
COPY corpus/seed.txt /corpus/seed.txt

# Set to fuzz!
ENTRYPOINT []
CMD ["/fuzzme", "@@"]
