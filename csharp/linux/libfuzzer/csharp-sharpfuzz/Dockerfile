FROM mcr.microsoft.com/dotnet/nightly/sdk:6.0 AS builder

RUN mkdir /workdir
WORKDIR /workdir

RUN dotnet tool install --global SharpFuzz.CommandLine --version 2.1.1
RUN wget $(curl -s https://api.github.com/repos/Metalnem/libfuzzer-dotnet/releases/latest | grep "tarball_url" | cut -d '"' -f 4) -O libfuzzer-dotnet.tar.gz && \
    mkdir libfuzzer-dotnet && \
    tar xzf libfuzzer-dotnet.tar.gz -C libfuzzer-dotnet --strip-components=1 && \
    rm libfuzzer-dotnet.tar.gz && \
    rm -r libfuzzer-dotnet/tests libfuzzer-dotnet/test.ps1

ENV PATH=$PATH:/root/.dotnet/tools

COPY Program.cs Program.cs
COPY fuzzme.csproj fuzzme.csproj

RUN dotnet publish fuzzme.csproj -c release -r linux-x64 --self-contained -o fuzzme
RUN sharpfuzz ./fuzzme/fuzzme.dll Fuzzme.Fuzzme
RUN mv libfuzzer-dotnet fuzzme/libfuzzer-dotnet

FROM mcr.microsoft.com/dotnet/nightly/runtime:6.0
COPY --from=builder /workdir/fuzzme /fuzzme

# Set to fuzz!
ENTRYPOINT []
CMD ["/fuzzme/libfuzzer-dotnet", "--target_path=/fuzzme/fuzzme"]
