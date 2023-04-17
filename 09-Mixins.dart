import '06-classes.dart';

mixin Piloted{
  //在已存在的代码中注入新的东西，类似抽象类
  int astronauts=1;

  void describleCrew(){
    print('Number of astronauts: $astronauts');
  }
}

class PilotedCraft extends Spacecraft with Piloted{
  PilotedCraft(super.name,super.launchDate);
}

void main(){
  PilotedCraft p=PilotedCraft('Test',DateTime(2022,1,1));
  p.describleCrew();
  p.astronauts=1;
}