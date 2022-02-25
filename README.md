Bloc Example

Equatable
 
https://pub.dev/packages/equatable

Equatable version used in this project:-
equatable: ^2.0.3

Equatable overrides == and hashCode for you so you don't have to waste your time writing lots of boilerplate code.

There are other packages that will actually generate the boilerplate for you; however, you still have to run the code generation step which is not ideal.

With Equatable there is no code generation needed and we can focus more on writing amazing applications and less on mundane tasks.

Usage

First, we need to do add equatable to the dependencies of the pubspec.yaml

dependencies:
equatable: ^2.0.0
Next, we need to install it:

# Dart
pub get

# Flutter
flutter packages get
Lastly, we need to extend Equatable

import 'package:equatable/equatable.dart';

class Person extends Equatable {
const Person(this.name);

final String name;

@override
List<Object> get props => [name];
}
When working with json:

import 'package:equatable/equatable.dart';

class Person extends Equatable {
const Person(this.name);

final String name;

@override
List<Object> get props => [name];

factory Person.fromJson(Map<String, dynamic> json) {
return Person(json['name']);
}
}







