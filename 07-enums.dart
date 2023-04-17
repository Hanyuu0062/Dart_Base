enum PlanetType{terrestrial, gas, ice} //简单的枚举

enum Planet{
  mercury(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  venus(planetType: PlanetType.terrestrial, moons: 0, hasRings: false),
  earth(planetType: PlanetType.gas, moons: 1, hasRings: true),
  uranus(planetType: PlanetType.ice, moons: 0, hasRings: true),
  test(moons: 1,hasRings: false, planetType: PlanetType.gas),//可以不按字典写的顺序写
  neptune(planetType: PlanetType.ice, moons: 0, hasRings: true);
  

  const Planet({required this.planetType, required this.moons, required this.hasRings});//枚举出的是对象，字典传入参数

  final PlanetType planetType;
  final int moons;
  final bool hasRings;
  bool get isGiant => planetType == PlanetType.gas || planetType==PlanetType.ice;
}

void main(){
  final yourPlanet =Planet.test;
  //dart语言默认写成final
  if(!yourPlanet.isGiant){
    print('Your planet is not a "giant planet".');
  }else{
    print('Your planet is a "giant planet".');
  }
}
