FROM mcr.microsoft.com/dotnet/nightly/sdk:6.0 as builder

RUN mkdir /workdir
WORKDIR /workdir

RUN dotnet tool install --global SharpFuzz.CommandLine
RUN wget https://github.com/Metalnem/libfuzzer-dotnet/releases/latest/download/libfuzzer-dotnet.tar.gz && \
    tar -xf libfuzzer-dotnet.tar.gz && \
    rm libfuzzer-dotnet.tar.gz

ENV PATH $PATH:/root/.dotnet/tools

COPY Program.cs Program.cs
COPY fuzzme.csproj fuzzme.csproj

RUN dotnet publish fuzzme.csproj -c release -r linux-x64 --self-contained -o fuzzme
RUN sharpfuzz ./fuzzme/fuzzme.dll Fuzzme.Fuzzme
RUN mv libfuzzer-dotnet fuzzme/libfuzzer-dotnet

FROM mcr.microsoft.com/dotnet/nightly/runtime:6.0 as fuzzer
COPY --from=builder /workdir/fuzzme /fuzzme

# Set to fuzz!
ENTRYPOINT []
CMD ["/fuzzme/libfuzzer-dotnet", "--target_path=/fuzzme/fuzzme"]
