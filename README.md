# zig ld bug repro

Compiling with Clang works, but zig ld does not for this library

```bash
error(link): undefined reference to symbol ''
error(link):   first referenced in '/Users/jarred/Build/zig-ld-bug/zig-cache/o/c52829028565f17f9f891944f4f5646c/main.o'
error(link): undefined reference to symbol ''
error(link):   first referenced in '/Users/jarred/Build/zig-ld-bug/zig-cache/o/c52829028565f17f9f891944f4f5646c/main.o'
error(link): undefined reference to symbol ''
error(link):   first referenced in '/Users/jarred/Build/zig-ld-bug/zig-cache/o/c52829028565f17f9f891944f4f5646c/main.o'
error: UndefinedSymbolReference
```

To repro with zig ld:

```bash
make with-zig-ld
```

To repro with clang:

```bash
make with-clang
```

This happens when s2n-tls and libcrypto are included

- [s2n-tls](https://github.com/aws/s2n-tls)
- libcrypto from OpenSSL
