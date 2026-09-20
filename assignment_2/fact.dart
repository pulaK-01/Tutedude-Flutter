import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  final n = int.parse(stdin.readLineSync() ?? '0');
  var fact = 1;

  for (var i = 1; i <= n; i++) {
    fact *= i;
  }

  print('Factorial of $n = $fact');
}
