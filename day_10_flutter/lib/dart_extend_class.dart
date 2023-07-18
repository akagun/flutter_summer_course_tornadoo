class Pirate {
  String name = '';
  int age = 0;
  String ability = '';
  int numberOfGold = 0;
  Pirate(
      {required String name,
      required int age,
      required String ability,
      required int numberOfGold}) {
    this.name = name;
    this.age = age;
    this.ability = ability;
    this.numberOfGold = numberOfGold;
  }
  void haiHoi() {
    print("My name is ${this.name}. I'm ${this.age} years old. "
        "I have an ability of ${this.ability}"
        "I have ${this.numberOfGold} Gold"
        "Im a pirate");
  }
}

class Zoro extends Pirate {
  Zoro(
      {required super.name,
      required super.age,
      required super.ability,
      required super.numberOfGold});
  @override
  void haiHoi() {
    print("Im the greatest pirate of all time."
        "I want to be the strongest swordsman. I have poor sense of direction. I eat. I have strong physical stenght");
  }
}

class Nami extends Pirate {
  Nami(
      {required super.name,
      required super.age,
      required super.ability,
      required super.numberOfGold});
  @override
  void haiHoi() {
    print("Im the greatest pirate of all time"
        "I want to create a complete map of the world. I'm rich. I fight. I have navigation skills.");
  }
}
class Luffy extends Pirate {
  Luffy(
  {required super.name,
    required super.age,
    required super.ability,
    required super.numberOfGold});
  @override
  void haiHoi() {
    print("Im the greatest pirate of all time"
        "I want to be the pirate king. I eat a lot. I fight. I can strecth my body.");
  }
}
class Sanji extends Pirate {
  Sanji(
  {required super.name,
  required super.age,
  required super.ability,
  required super.numberOfGold}
      );
  @override
  void haiHoi() {
    print("I'm the greatest pirate of all time"
        "I want to be a chef. I cook. I fight. I can kick hard.");
  }
}

void main() {
  final Zoro zoro = Zoro(
      name: "Zoro",
      age: 19,
      ability: "Immense physical strenght",
      numberOfGold: 1234);
  zoro.haiHoi();
  final Nami nami = Nami(
      name: "Nami",
      age: 18,
      ability: "navigation skill",
      numberOfGold: 83764626271);
  nami.haiHoi();
  final Luffy luffy = Luffy(name: "Luffy", age: 19, ability: "strecthing body", numberOfGold: 0);
  luffy.haiHoi();
  final Sanji sanji = Sanji(name: "Sanji", age: 19, ability: "kicking", numberOfGold: 8383);
  sanji.haiHoi();
}
