import 'package:rusty_ffi/rusty_ffi.dart' as rust;

main() {
  var number = rust.add(12, 13);
  print("call rust function add=$number");
}
