import 'dart:io';
import '09-Mixins.dart';
/*
if (astronauts == 0){
  throw StateError('No astronauts.');
}*/

Future <void> describeFybyObjects(List<String> flybyObjects) async{
  try{
    for(final object in flybyObjects){
      var description = await File('$object.txt').readAsString();
      print(description);
    }
  }on IOException catch (e){
    print('Could not describe object: $e');
  }finally{
    flybyObjects.clear();
  }
}