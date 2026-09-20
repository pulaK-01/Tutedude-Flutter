// Student class definition
class Student {
  String name;
  int age;
  List<double> grades;

  // Constructor
  Student(this.name, this.age, this.grades);

  // Function to calculate average score
  double calculateAverage() {
    if (grades.isEmpty)
      return 0.0;
    double total = 0.0;
    for (double g in grades){
      total += g;
    }
    return total / grades.length;
  }

  // Display method
  void displayInfo() {
    print('Student: $name | Age: $age');
    print('Grades: $grades');
    print('Average: ${calculateAverage()}');
  }
}

void main() {

  // Create object instances
  Student student1 = Student('sheru', 20, [85.5, 90.0, 78.0]);
  Student student2 = Student('keo', 22, [95.0, 88.0, 91.5]);

  student1.displayInfo();
  print('-------------------');
  student2.displayInfo();
}
