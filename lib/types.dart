import 'dart:ffi' as ffi;

typedef NativeRustAddFunction = ffi.Int32 Function(ffi.Int32, ffi.Int32);
typedef NativeAddFunction = int Function(int, int);
