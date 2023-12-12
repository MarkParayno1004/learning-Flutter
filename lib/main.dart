import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

void test() {
  chapter3();
  chapter4();
  chapter5();
  chapter6();
}

void chapter3() {
  //!Data Types
  //*Strings, Number, Double
  //*var
  // var name = 'Mark';
  // name = 'Philip';
  // var age = 13;
  // age = 15;
  //*const
  //const names = 'Mark';
  //names = 'Philip'; //Error because the value of constant cant be change.
  // const age = 15;
  // const ageDouble = age *2;
  //*final
  //final nameFinal = 'Mark';
  //nameFinal = 'Philip'; // Error because final can only be set once.
  // final age = 15;
  // final ageDouble = age * 2;
  //*String Concatenation
  // const name = 'Mark';
  // print("My name is $name");

  //!Functions
// String getFullName(String firstName, String lastName) {
//   return '$firstName $lastName';
// }

// int getInt(int firstNumber, int lastNumber) => firstNumber * lastNumber;

// double getDouble(double firstNumber, double lastNumber) =>
//     firstNumber + lastNumber;

//*Simplified Function or The line of code is one statement
//String getFullName(String firstName, String lastName) => '$firstName $lastName';

// String printMyName() {
//   return '';
// }
}

void chapter4() {
  //! Logical Statement
  //*IF ELSE Statement
  // final name = 'bar';
  // if (name == 'Foo') {
  //   print('Yes this is foo');
  // } else if (name != 'bar') {
  //   print('No this is not foo, this is bar.');
  // } else {
  //   print("I don't know what this is");
  // }
  //*One line of code of IF ELSE
  // if (name == 'Foo') print('yes this is foo');

  //!Operators as + - and /
  // final age = 20;
  //* Addition
  // final agePlusOne = age + 1;
  //* Subtraction(-)
  // final ageMinusOne = age - 1;
  //* Division(/)
  // final halfOfAge = age / 2;
  //* Multiplication(*)
  // final doubleTheAge = age * 2;
  //* Multiply string value
  // final name = 'mark';
  // final nameTimes20 = name * 20;

  // print(nameTimes20);
  // print(halfOfAge);
  // print(doubleTheAge);
  // print(ageMinusOne);
  //!Lists in Dart, lists is an array.
  //ts an ordered collection of different values but and it has the same data type
  //it can also duplicate values.
  //* using final in lists
  // final namesList = ['Foo', 'Bar', 'Baz'];
  // namesList.add('Philip');
  // final foo = namesList[2];
  // final length = namesList.length;
  //* using var in lists
  // var namesList = ['Foo', 'Bar', 'Baz', 2];
  // namesList.add('Philip');
  // var foo = namesList[2];
  // var length = namesList.length;
  // namesList.add('Foo');
  // print(namesList);
  // print(length);

  //!Sets in Dart, still an array but does not duplicate.
  //its an unordered collection of different values but it has the same data type.
  //sets in dart is also an array
  //allows you to create unique new things or it must contain unique values
  //final names = {'foo', 'bar', 'baz', 1};
  // value cant repeat inside of object or cant duplicate
  // Sets in dart cant cater a set of integer and string should be only one
  // e.g above 1 becomes of strings
  //final specificNames = names[2]; // this example will not work because it is unordered.
  // names.add('mark');
  // final namesLength = names.length;
  // print(namesLength);

  //!Maps in Dart, Maps is an object
  //its an key-value pair, key cannot be duplicate should be unique.
  // var person = {
  //   'name': 'mark',
  //   'age': 23,
  // };
  // print(person);
  // person['name'] = 'MARK';
  // print(person);
  // person['lastName'] = 'Parayno';
  // print(person);
}

void chapter5() {
  testNull(null, 'mark', null);
  nullTest(['mark', 'philip']);
}

void testNull(String? firstName, String? middleName, String? lastName) {
  //!Sound null safety
  //* null-aware operators
  //* "??" decision making whether the left or right is null.
  //* "?." for objects
  //* "??=" assigns the value of the right if the value of the left is null
  //*dart cant understand null values it cannot indicate what data type it is.(e.g. below)
  //const String name = null; // this is an error, dart cant understand null.
  //*but you can initiate that sometimes the value can be null.(e.g. below)
  // String? name = null;
  // print(name);
  // name = 'Foo';
  // print(name);

  //*another examples
  // int? age = 20;
  // print(age);
  // age = null;
  // print(age);

  //  if (age == null) {
  //     print('this is null');
  //   }

  //*This list of strings have a variable named listNames that can be absent but can also have a objects that can be null while the variable is absent or null.
  //in short listNames can be null and its values can be null
  //Nullable list of nullable strings
  // List<String?>? listNames = ['Foo', 'Bar', null];

  //*Cherry picking non-null values
  // const String? firstName = null;
  // const String? middleName = 'Foo';
  // const String? lastName = 'Bar';

  // if (firstName != null) {
  //   print('first name is the first non-null value');
  // } else if (middleName != null) {
  //   print('middle name is the first non-null value');
  // } else if (lastName != null) {
  //   print('last name is the first non-null value');
  // }
  //*This is spaghetti code below is a sample of simplified:
  // const firstNonNullValue = firstName ?? middleName ?? lastName;
  // print('hello');

  //*null-aware assignment operator
  // String? name = firstName;
  //the left value "name" it will check if it is null. if it is not null i will leave it aside, if it is null it will assign on the right value to null.
  // name ??= middleName;
  // name ??= lastName;
  // print(name);
}

void nullTest(List<String>? names) {
//   if the value of "names" is not null grab its length, if its null grab the "0"
//    final length = names?.length ?? 0;
//    print(length);
//   names?.add('Baz');
//   print(names);
}

//! Chapter 6
//! ==IF YOU WANT TO USE THIS CODES, YOU NEED TO COPY AND PASTE OUTSIDE OF THIS FUNCTION CHAPTER 6.===
//! ==THEN REMOVE THE COMMENTS TO BE ABLE TO USE, ALSO REMOVE THE COMMENTS OF THE PRINTS TO BE ABLE TO RUN THE CODE.===
//!Enumerations
//enumerations are name list of related items or like an objects
//when using enum if planning to use Branches or long conditional statements then Switch is the right one to use.
// enum PersonProperties { firstName, lastName, age }

// enum AnimalType { cat, dog, bunny }

// void TypeAnimal(AnimalType animalType) {
//   switch (animalType) {
//     case AnimalType.cat:
//       print('This is a cat');
//       break;
//     case AnimalType.dog:
//       print('This is a dog');
//       break;
//     case AnimalType.bunny:
//       print('This is a bunny');
//       break;
//   }
//   print("Function is finished");
// }

// void makeSureThisIsACat(AnimalType animalType) {
//   if (animalType != AnimalType.cat) return;

///-----Rest of the code if it is equal to cat------///
// }

//! Classes
// Grouping of various functionalities into one packageable piece of data.
// class Person {
//   void run() {
//     print("Running");
//   }

//   void breathe() {
//     print("Breathing");
//   }
// }

//! Constructors
// is a special logic in a class that constructs or initializes builds the classes instances
// class Person {
//   final String name;
//   final int age;

//   Person(this.name, this.age);
//   }

//! Methods
// Method of a class is a function in a class.
// Method is called after a class is instantiated.
// class Person {
//   final String name;

//   Person(this.name);

//   void printName() {
//     print("I will now print the name of this person");
//     print(this.name);
//   }
// }

//! Inheritance and Sub-classing
// class LivingThing {
//   void breathe() {
//     print("Living this is breathing");
//   }

//   void move() {
//     print("I am moving");
//   }
// }

// class Cat extends LivingThing {}

//! Abstract classes
//Abstract cant be instantiated or called by another classes or method
//They can contain logic
// abstract class LivingThing {
//   void breathe() {
//     print("Living this is breathing");
//   }

//   void move() {
//     print("I am moving");
//   }
// }

// class Cat extends LivingThing {}

//! Factory Constructors
// is a way to construct instances of your classes using convenience function
// can return instances that are not of the same class
// good for data parsing like json
// class Cat {
//   final String name;
//   final int age;

//   Cat(this.name, this.age);
//   factory Cat.fluffBall() {
//     return Cat('Fluff Ball', 23);
//   }
// }

//!Custom Operators
// You can define custom operators on your own class or only on your own class.
class Cat {
  final String name;

  Cat(this.name);
  @override
  bool operator ==(covariant Cat other) => other.name == name;

  @override
  int get hashCode => name.hashCode;
}

//! Example of OOP combined
enum PersonQualities { firstName, lastName, age }

abstract class PersonQual {
  final String personFirstName;
  final String personLastName;
  final int personAge;

  PersonQual(this.personFirstName, this.personLastName, this.personAge);

  void returnPerson(PersonQualities personIdentity) {
    switch (personIdentity) {
      case PersonQualities.firstName:
        print('This is my first name $personFirstName');
        break;
      case PersonQualities.lastName:
        print('This is my last name $personLastName');
        break;
      case PersonQualities.age:
        print('This is my age $personAge');
    }
  }
}

class GetPerson extends PersonQual {
  GetPerson(super.personFirstName, super.personLastName, super.personAge);
}

void chapter6() {
  //!Enumeration Prints
  // TypeAnimal(AnimalType.cat);
  // var personP = PersonProperties.firstName.name;
  // print(personP);

  //!Classes Prints
  // final person = Person(); //Instance or Call out of Class
  // person.run();
  // person.breathe();

  //!Constructor Prints
  // final person = Person('Foo', 2);
  // print(person.name);
  // print(person.age);

  //!Method prints
  // final person = Person('Maek');
  // person.printName();

  //!Instance or Sub-classing prints
  // final fluffer = Cat();
  // fluffer.breathe();

  //!Abstract print
  // final flutter = Cat();
  // flutter.breathe();
  //! OOP print
  // final person = PersonQual('Foo', 'Bar', 23);
  // person.returnPerson(PersonQualities.age);

  //!Factory Constructors prints
  // final fluffBall = Cat.fluffBall();
  // print(fluffBall.age);

  //!Example of OOP prints
  // final getperson = GetPerson('Foo', 'Bar', 13);
  // getperson.returnPerson(PersonQualities.firstName);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // print(getFullName('Foo', 'Bar'));
    // print(getInt(20, 23));
    // print(getDouble(20, 23));

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    test();
    // testNull(null, null, 'Baz');
    // nullTest(['Foo']);

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our app bar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wire frame for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
