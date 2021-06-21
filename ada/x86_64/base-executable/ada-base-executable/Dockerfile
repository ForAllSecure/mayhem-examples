FROM tomekw/ada-gnat
COPY fuzzme.adb .
RUN gnatmake -o /fuzzme fuzzme.adb

# Set to fuzz!
ENTRYPOINT []
CMD ["/fuzzme", "@@"]
