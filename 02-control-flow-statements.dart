void main(){
  int year=2001;
  if(year>=2001){
    print('21st century');
  }else if(year>=1901){
    print('20st century');
  }

  //
  var flybyObjects = [1, 'Saturn', 'Uranus', 'Neptune'];
  for(final obj in flybyObjects){
    print(obj);
  }

  for(int i=0;i<12;++i){
    print(i);
  }

  while(year<2016){
    year+=1;
  }
}