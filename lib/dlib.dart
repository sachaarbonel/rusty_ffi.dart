import 'dart:ffi' as ffi;

ffi.DynamicLibrary rustlib = () {
  ffi.DynamicLibrary dl =
      ffi.DynamicLibrary.open("target/debug/librust_add.so");
  return dl;
}();
