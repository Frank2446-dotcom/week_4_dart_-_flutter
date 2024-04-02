import 'dart:io';

// Interface
abstract class Animal {
  void makeSound();
}

// Base class
class LivingBeing {
  void breathe() {
    print('Breathing...');
  }
}

// Class that implements an interface and overrides a method
class Dog extends LivingBeing implements Animal {
  @override
  void makeSound() {
    print('Woof!');
  }
}

// Class that represents an instance initialized with data from a file
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  factory Person.fromFile(File file) {
    List<String> data = file.readAsLinesSync();
    return Person(data[0], int.parse(data[1]));
  }

  void displayInfo() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  // Demonstration of class that implements an interface and overrides a method
  Dog dog = Dog();
  dog.makeSound();
  dog.breathe(); // Inherited method from LivingBeing

  // Demonstration of class that is initialized with data from a file
  File personFile = File('person.txt');
  if (personFile.existsSync()) {
    Person person = Person.fromFile(personFile);
    person.displayInfo();
  } else {
    print('File not found');
  }

  // Demonstration of a loop
  for (int i = 0; i < 3; i++) {
    print('Loop iteration: $i');
  }
}
