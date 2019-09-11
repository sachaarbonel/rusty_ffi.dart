import 'dart:ffi' as ffi;
import 'dart:ffi';
import 'package:ffi/ffi.dart';

typedef NativeRustPlayOnceFunction = ffi.Void Function(ffi.Pointer<Utf8>);
typedef NativePlayOnceFunction = void Function();

main() {
  ffi.DynamicLibrary dl =
      ffi.DynamicLibrary.open("target/debug/libplay_once.so");
  var play_once =
      dl.lookupFunction<NativeRustPlayOnceFunction, NativeRustPlayOnceFunction>(
          "play_once");
  final Pointer<Utf8> song = Utf8.toUtf8("data/beep.wav").cast();
  play_once(song);
}
