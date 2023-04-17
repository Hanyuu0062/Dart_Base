import '06-classes.dart';

class Orbiter extends Spacecraft{
  // 子类必不可少时候再去扩展
  double altitude;

  Orbiter(super.name, super.lanuchDate, this.altitude);
}

void main(){
  Orbiter orbiter=Orbiter('Test',DateTime(2003,1,23),0);
  orbiter.describe();
}