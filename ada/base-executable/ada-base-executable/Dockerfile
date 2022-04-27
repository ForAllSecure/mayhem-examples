FROM tomekw/ada-gnat
COPY src/mayhemit.adb .
RUN gnatmake mayhemit.adb -o /mayhemit 

# Set to fuzz!
ENTRYPOINT []
CMD ["/mayhemit", "@@"]
