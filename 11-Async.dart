import 'dart:io';
import '06-classes.dart';

const oneSecond =Duration(seconds:1);

Future <void> printWithDelay(String message) async{
  // 开另一个程序运行的线
  await Future.delayed(oneSecond); // 同步锁，使主线程等待
  print(message);
}

/* 和上面的程序等价
Future<void> printWithDelay(String message) {
  return Future.delayed(oneSecond).then((_) {//匿名函数,返回时才执行then
    print(message);
  });
}
*/

Future<void> createDescriptions(Iterable<String> objects) async{
  for(final object in objects){
    try{
      var file=File('$object.txt');
      if(await file.exists()){
        var modified=await file.lastModified();
        print('File for $object already exists. It was modified on $modified.');
        continue;
      }
      await file.create();
      await file.writeAsString('Start describling $object in this file.');
    } on IOException catch(e){
      print('Cannot create description for $object: $e');
    }
  }
}

Stream<String> report(Spacecraft craft,Iterable<String> objects) async*{
  for(final object in objects){
    await Future.delayed(oneSecond);
    yield '${craft.name} files by $object';//类似return
  }
}

void main(){
  //report(craft:Spacecraft('Test', DateTime(2020,1,1)), objects: );
}