import 'bindings.dart' as bd;

int add(int a, int b) {
  return bd.NewAdd(a, b);
}
