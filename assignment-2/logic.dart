import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  final number = int.parse(stdin.readLineSync() ?? '0');
  final result = number.isEven ? 'Even' : 'Odd';
  print('$number is $result');
}
