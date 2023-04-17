import '06-classes.dart';

class MockSapaceShip implements Spacecraft {
  // 每个class都可以作为一个接口
  String get name => '1';
  DateTime get launchDate => DateTime(1977, 9, 5);
  int? get launchYear => launchDate?.year;
  void describe() {
    print('Spacecraft $name');
  }
  
  @override
  set launchDate(DateTime? _launchDate) {
    // TODO: implement launchDate
  }
  
  @override
  set name(String _name) {
    // TODO: implement name
  }
}

abstract class Describle {
  void describle();

  void describleWithEmphasis() {
    print('======');
    describle();
    print('======');
  }
}

class Person {
  final String _name;
  Person(this._name);
  String greet(String who) => 'Hello,$who.I am $_name';
}

class Impostor implements Person {
  String get _name => '1';
  String greet(String who) => 'Hi,$who.Do you know who I am $_name';
}

String greetBob(Person person) => person.greet('Bob');

void main() {
  print(greetBob(Person('Kathy')));
  print(greetBob(Impostor()));
}
