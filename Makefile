with-zig-ld:
	zig build-exe main.zig  ./libcrypto.a  ./libs2n.a -lc
	./main

with-clang:
	zig build-obj main.zig -lc -fcompiler-rt
	clang -o main-clang main.o ./libcrypto.a ./libs2n.a -lc
	./main-clang