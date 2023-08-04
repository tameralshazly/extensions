import 'dart:math' show Random;

void main(List<String> args) {
  print(add.callWithRandomValues());
  print(subtract.callWithRandomValues());
}

int add(int a, int b) => a + b;
int subtract(int a, int b) => a - b;

typedef IntFunction = int Function(int, int);

extension on IntFunction {
  int callWithRandomValues() {
    final randomNum1 = Random().nextInt(100);
    final randomNum2 = Random().nextInt(100);
    print('Random values = $randomNum1, $randomNum2');
    return this.call(
      randomNum1,
      randomNum2,
    );
  }
}
