

// User-defined function with parameters and return type
String formatGreeting(String name, String role) {
  // String manipulation: Uppercase and trimming
  return 'Hello, ${name.toUpperCase()}! You are a ${role.trim()}.';
}

void main() {
  String greeting = formatGreeting('Leo ', ' Developer ');
  print(greeting);

//String Manipulation 
  String text = '  Dart Programming Language  ';
  print('Original: "$text"');
  print('Trimmed: "${text.trim()}"');
  print('Replaced: "${text.replaceAll('Dart', 'Flutter')}"');
  print('Substring: "${text.trim().substring(0, 4)}"');
}
