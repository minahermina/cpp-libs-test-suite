#!/bin/sh

set -ex

# 1- Clone the catalog-core repo
git clone https://github.com/unikraft/catalog-core.git
cd catalog-core/

# 2- Create repository setup
./setup.sh

# 3- Go to application
cd cpp-hello/

# 4- Setup app repositories (workdir/libs)
./setup.sh

# 5- Checkout the scripts branch
git checkout -b scripts origin/scripts

# ##############################################

# 6- setup each library of (libcxx, libcxxabi, libunwind, and libcompiler-rt) against changes made.
cd workdir/libs/

# 6.1- Set up libcxx.
echo "Setting up libcxx..."

cd libcxx
git remote add mina https://github.com/minahermina/lib-libcxx.git
git fetch mina
git checkout mina/staging
cd ..


# 6.2- Set up libcxxabi.
echo "Setting up libcxxabi..."

cd libcxxabi
git remote add mina https://github.com/minahermina/lib-libcxxabi.git
git fetch mina
git checkout mina/staging
cd ..


# 6.3- Set up libunwind.
echo "Setting up libunwind..."

cd libunwind
git remote add mina https://github.com/minahermina/lib-libunwind.git
git fetch mina
git checkout mina/staging
cd ..


# 6.4- Set up libcompiler-rt.
echo "Setting up compiler-rt..."

cd compiler-rt
git remote add mina https://github.com/minahermina/lib-compiler-rt.git
git fetch mina
git checkout mina/staging
cd ..

# ##############################################

# cd into the application dir (cpp-hello)
cd ../../

# 7- Build the app
./scripts/build/qemu.x86_64

# 8- Run the app
./scripts/run/qemu.x86_64
