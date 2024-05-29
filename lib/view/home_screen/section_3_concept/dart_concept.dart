import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../frequent_used_widget/moving_background.dart';
import '../section_1_install_flutter/common_widget/information_area.dart';

class DartConcept extends StatelessWidget {
  const DartConcept({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomMovingBackground(
      child: Scaffold(
        backgroundColor: HexColor('#011f4b').withOpacity(0),
        appBar: AppBar(
          title: FittedBox(
            fit: BoxFit.contain,
            child: const AutoSizeText('Dart Concept',
                style: TextStyle(
                  fontFamily: 'Oswald',
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                )).animate().scale(duration: 400.ms, curve: Curves.decelerate),
          ),
          backgroundColor: HexColor('#011f4b').withOpacity(0),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                AutoSizeText(
                  'Dart: A General-Purpose Programming Language',
                  maxLines: 2,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ).animate().scale(duration: 400.ms, curve: Curves.decelerate),
                SizedBox(
                  height: 5,
                ),
                AutoSizeText(
                  'Dart is a general-purpose programming language originally developed by Google. It\'s used for building web, server, desktop, and mobile applications. Dart offers a blend of familiar syntax, powerful features, and strong typing. It\'s particularly well-known as the language used for developing Flutter applications.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ).animate().scale(duration: 400.ms, curve: Curves.decelerate),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: AutoSizeText(
                    maxLines: 1,
                    'Key Concepts used in flutter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ).animate().scale(duration: 400.ms, curve: Curves.decelerate),
                SizedBox(
                  height: 5,
                ),
                InformationBox().CardTextWithCommandWithoutStep(
                    Heading: '1) Main() & Print()',
                    Content:
                        '1) void main() is the entry point of a Dart program.\n\n'
                        '2) print() is used to display output to the console.',
                    Command: '''void main() {
  print('Hello, Dart!');
}'''),
                InformationBox().CardTextWithCommandWithoutStep(
                    Heading: '2) Variables and Data Types',
                    Content:
                        'Dart has several data types, including int, double, String, bool, and more.',
                    Command: '''int age = 25;
double pi = 3.14;
String name = 'Alice';
bool isStudent = true;'''),
                InformationBox().CardTextWithCommandWithoutStep(
                    Heading: '3) Control Structures :',
                    Content:
                        'Dart supports common control structures like if, else, for, while, and switch.',
                    Command: '''bool isStudent = true;

// Check if the person is a student
if (isStudent) {
  print('Student');
} else {
  print('Not a student');
}

// Loop through numbers and print count
for (var i = 0; i < 5; i++) {
  print('Count: \$i');
}

// Switch statement example
var grade = 'A';

switch (grade) {
  case 'A':
    print('Excellent!');
    break;
  case 'B':
    print('Good!');
    break;
  case 'C':
    print('Fair!');
    break;
  case 'D':
    print('Needs Improvement!');
    break;
  case 'F':
    print('Fail!');
    break;
  default:
    print('Invalid grade');
}'''),

                InformationBox().CardTextWithCommandWithoutStep(
                    Heading: '4) Functions in Dart',
                    Content:
                    'In Dart, functions are objects and have a type just like any other variable. They can be assigned to variables, passed as arguments, and returned from other functions. Functions are defined using the functionName() syntax.',
                    Command: '''returnType functionName(parameter1, parameter2, ...) {
  // Function body
  // Statements
  return value;
}'''),

                InformationBox().CardTextWithCommandWithoutStep(
                    Heading: '5) One-liner Functions',
                    Content:
                    'You can use the => syntax for one-liner functions, especially if the function has a single expression.',
                    Command: '''int square(int x) => x * x;'''),

                InformationBox().CardTextWithCommandWithoutStep(
                    Heading: '6) Variables and Data Types',
                    Content:
                    'Dart has several data types, including int, double, String, bool, and more.',
                    Command: '''int age = 25;
double pi = 3.14;
String name = 'Alice';
bool isStudent = true;'''),

                InformationBox().CardTextWithCommandWithoutStep(
                    Heading: '7) Lists in Dart',
                    Content:
                    'In Dart, lists hold a collection of items, and you can access them by index. Lists can contain elements of any type, including other lists.',
                    Command: '''List<elementType> listName = [item1, item2, ...];

// Example :-
List<int> numbers = [1, 2, 3];
'''),

                InformationBox().CardTextWithCommandWithoutStep(
                    Heading: '8) Maps in Dart',
                    Content:
                    'Maps store key-value pairs, where each key is unique. You can use the keys to retrieve the corresponding values.',
                    Command: '''Map<keyType, valueType> mapName = {key1: value1, key2: value2, ...};

// Example :-
Map<String, int> scores = {'Alice': 95, 'Bob': 88};
'''),
                InformationBox().CardTextWithCommandWithoutStep(
                    Heading: '9) Exception Handling in Dart',
                    Content:
                    '''In Dart, you can handle exceptions using try, catch, and finally blocks.

1) try: The block of code that might throw an exception.\n
2) catch: The block of code that handles the exception if one is thrown.\n
3) finally: The block of code that always runs, regardless of whether an exception is thrown or caught.
''',
                    Command: '''try {
  // Code that may throw an exception
} catch (e) {
  // Code to handle the exception
} finally {
  // Code that always runs
}


// Example :-
try {
  // Code that may throw an exception
  int result = 10 ~/ 0; // This will throw an exception
} catch (e) {
  // Code to handle the exception
  print('An error occurred: \$e');
} finally {
  // Code that always runs
  print('This block always runs, regardless of exception');
}'''),

                SizedBox(height: 40,),
                const Center(
                  child: AutoSizeText(
                    maxLines: 1,
                    'Object Oriented Programming',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
                SizedBox(height: 20,),

                InformationBox().CardTextWithCommandWithoutStep(
                    Heading: '1) Classes',
                    Content:
                    '''A class in Dart is a blueprint for creating objects that encapsulate properties and methods\n
  In this example:
1) MyClass is a class with a property myProperty and a method myMethod.\n
2) The constructor initializes the property myProperty.\n
3) In main(), an object obj of MyClass is created and initialized with myProperty value of 10.\n
4) It then accesses the property and calls the method of the object.\n''',
                    Command: '''// Class definition
class MyClass {
  // Properties
  int myProperty;

  // Constructor
  MyClass(this.myProperty);

  // Method
  void myMethod() {
    // Method body
  }
}

void main() {
  // Creating an object of MyClass
  var obj = MyClass(10);

  // Accessing property and calling method
  print('My property: \${obj.myProperty}');
  obj.myMethod();
}'''),

                InformationBox().CardTextWithCommandWithoutStep(
                    Heading: '2) Object',
                    Content:
                    'Objects in Dart are instances of classes, encapsulating both data and behavior; they are created using the "new" keyword followed by the class name, as demonstrated below:',
                    Command: '''// Creating an object of the MyClass class
var myObject = MyClass();'''),


                InformationBox().CardTextWithCommandWithoutStep(
                    Heading: '3) Inheritance',
                    Content:
                    'In Dart, inheritance is a mechanism enabling classes to inherit properties and methods from parent classes, thus promoting code reuse and simplifying development; this is accomplished using the "extends" keyword, as illustrated below:',
                    Command: '''// Parent class
class Animal {
  String name;
  
  Animal(this.name);

  void eat() {
    print('\$name is eating');
  }
}

// Child class inheriting from Animal
class Dog extends Animal {
  String breed;

  Dog(String name, this.breed) : super(name);

  void bark() {
    print('\$name is barking');
  }
}

void main() {
  // Creating an object of Dog class
  var dog = Dog('Buddy', 'Labrador');

  // Accessing inherited property and method
  print('Dog\'s name: \${dog.name}');
  dog.eat();

  // Calling own method
  dog.bark();
}'''),



                InformationBox().CardTextWithCommandWithoutStep(
                    Heading: '3) Polymorphism',
                    Content:
                    'Polymorphism in Dart refers to the ability of objects to take on many forms, treating them as instances of their parent class even if they are actually instances of a child class. This is achieved through method overriding, where a child class can provide a different implementation of a method inherited from its parent class.',
                    Command: '''// Parent class
class Animal {
  void makeSound() {
    print('Animal makes a sound');
  }
}

// Child class overriding the makeSound method
class Dog extends Animal {
  @override
  void makeSound() {
    print('Dog barks');
  }
}

// Another child class overriding the makeSound method
class Cat extends Animal {
  @override
  void makeSound() {
    print('Cat meows');
  }
}

void main() {
  // Polymorphism: Treating Dog and Cat objects as Animals
  Animal dog = Dog();
  Animal cat = Cat();

  // Call makeSound method of Dog
  dog.makeSound(); // Output: Dog barks

  // Call makeSound method of Cat
  cat.makeSound(); // Output: Cat meows
}'''),

                const Text('That\'s it! You’ve successfully Learned Basic OOP Concept. You’re now ready to start developing cross-platform applications using Flutter and Dart.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.w200,
                    height: 0,
                  ),),

                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
