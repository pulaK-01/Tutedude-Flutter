import 'dart:io';

void main() {
  stdout.write('Enter your name: ');
  final name = stdin.readLineSync() ?? '';
  print('Hello, $name!');
}
