class Spacecraft {
  String name;
  DateTime? launchDate; //?表示可以为空的值

  int? get launchYear => launchDate?.year;//这是一个函数,类似get方法

  Spacecraft(this.name, this.launchDate) {}//优化的构造函数

  Spacecraft.unlaunched(String name) : this(name, null);//有名字的构造函数，重载的

  void describe() {
    print('Spacecraft $name');//
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago);');
    } else {
      print('Unlaunched');
    }
  }
}

void main() {
  var voyager = Spacecraft('Voyager I', DateTime(1977, 9, 5));
  voyager.describe();

  var voyager3 = Spacecraft.unlaunched('Voyager III');
  voyager3.describe();
}