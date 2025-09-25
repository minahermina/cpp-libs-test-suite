# C++ Libraries Update Test Script

Test script for changes made to `libcxx`, `libcxxabi`, `libunwind`, and `libcompiler-rt` using [catalog-core](https://github.com/unikraft/catalog-core) cpp-hello application.

## Quick Test

```bash
git clone https://github.com/minahermina/cpp-libs-update-scripts.git
cd cpp-libs-update-scripts
chmod +x setup-test-cpp-libs.sh && ./setup-test-cpp-libs.sh
```
Note: This is a one-time setup script. After running it, you can compile normally with `make` and its subcommands from the `catalog-core/cpp-hello/` directory.
## What it does

1. Sets up catalog-core/cpp-hello test environment
2. Replaces libraries with updated versions from:
   - https://github.com/minahermina/lib-libcxx
   - https://github.com/minahermina/lib-libcxxabi
   - https://github.com/minahermina/lib-libunwind
   - https://github.com/minahermina/lib-compiler-rt
3. Builds and runs the application for `QEMU x86_64`

## Related PRs

- [libcxx#37](https://github.com/unikraft/lib-libcxx/pull/37)
- [libcxxabi#7](https://github.com/unikraft/lib-libcxxabi/pull/7)
- [libunwind#12](https://github.com/unikraft/lib-libunwind/pull/12)
- [compiler-rt#21](https://github.com/unikraft/lib-compiler-rt/pull/21)

Report any build/runtime issues you encounter.
