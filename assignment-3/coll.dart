void main() {
// Lists 
  print('\n--- Lists ---');
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  fruits.add('Mango');
  fruits.remove('Banana');
  print('Fruits List: $fruits');

// Sets 
  print('\n--- Sets ---');
  Set<int> numbers = {10, 20, 30, 20, 10}; // remove duplicate
  numbers.add(40);
  print('Unique Numbers Set: $numbers');

//Maps 
  print('\n--- Maps ---');
  Map<int,String> student = {01: 'A', 02: 'B'};
  student[03] = 'C';
   
  student.forEach((key, value) {
    print('$key: $value');
  });
}
