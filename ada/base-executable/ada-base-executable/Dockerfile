FROM tomekw/ada-gnat
COPY src/fuzzme.adb .
RUN gnatmake fuzzme.adb -o /fuzzme 

# Set to fuzz!
ENTRYPOINT []
CMD ["/fuzzme", "@@"]
