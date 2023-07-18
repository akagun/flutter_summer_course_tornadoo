class Body {
  int numberofseats = 0;

  Body({required int numberofseats}) {
    this.numberofseats = numberofseats;
  }
}

class Wheel {
  int numberofwheels = 0;
  Wheel({required int numberofwheels}) {
    this.numberofwheels = numberofwheels;
  }
}

class Car {
  String name = '';
  Body body = Body(numberofseats: 0);
  Wheel wheel = Wheel(numberofwheels: 0);
  Car({required String name, required Body body, required Wheel wheel}) {
    this.name = name;
    this.body = body;
    this.wheel = wheel;
  }

  void showMyInfo() {
    print('My info is ${this.name}');
  }
}


class Door {
  int numberOfDoors = 0;
  Door({required int numberOfDoors}) {
    this.numberOfDoors = numberOfDoors;
  }
}
class Floor {
  int numberOfFloors = 0;
  Floor({required int numberOfFloors}) {
    this.numberOfFloors = numberOfFloors;
  }
}
class Building {
  String name = '';
  Floor floor = Floor(numberOfFloors: 0);
  Door door = Door(numberOfDoors: 0);
  Building({required String name, required Floor floor, required Door door}) {
    this.name = name;
    this.floor = floor;
    this.door = door;


  }

}
void main() {
  final Body lamborghiniBody = Body(numberofseats: 2);
  final Wheel lamborghiniWheel = Wheel(numberofwheels: 4);
  final Car lamborghini =
  Car(name: 'Lamborghini', body: lamborghiniBody, wheel: lamborghiniWheel);
  lamborghini.showMyInfo();
  final Door numberOfDoors = Door(numberOfDoors: 2);
  final Floor numberOfFloors = Floor(numberOfFloors: 3);
  final Building ajnai101 = Building(name: 'ajnai101', floor: numberOfFloors, door: numberOfDoors);
  print(ajnai101);
}