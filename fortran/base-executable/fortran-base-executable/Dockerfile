FROM debian:bookworm-slim
COPY src/mayhemit.f90 .
RUN apt-get update && \
    apt-get install -fy gfortran && \
    gfortran mayhemit.f90 -o /mayhemit
COPY testsuite/seed.txt /testsuite/seed.txt

# Set to fuzz!
ENTRYPOINT []
CMD ["/mayhemit", "@@"]
