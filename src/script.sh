#!/bin/bash

# Get the nightly version from yesterday
VERSION="$(date -d yesterday +0.0.0-0.nightly.%Y.%m.%d)"

# Download the Carbon toolchain
wget https://github.com/carbon-language/carbon-lang/releases/download/v${VERSION}/carbon_toolchain-${VERSION}.tar.gz

# Unpack the toolchain
tar -xvf carbon_toolchain-${VERSION}.tar.gz

# Compile the renamed Carbon source file
./carbon_toolchain-${VERSION}/bin/carbon compile --output=main.o main.carbon

# Link to an executable
./carbon_toolchain-${VERSION}/bin/carbon link --output=main main.o

# Run the compiled executable
./main