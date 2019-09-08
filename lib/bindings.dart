import 'dlib.dart' as dl;
import 'types.dart';

int Function(int, int) NewAdd =
    dl.rustlib.lookupFunction<NativeRustAddFunction, NativeAddFunction>("add");
