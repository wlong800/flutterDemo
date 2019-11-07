//闭包
void main() {
  var func = a();
  func();
  func();
  func();
  func();
}

a() {
  int count = 0;

  return () {
    print(count++);
  };
}