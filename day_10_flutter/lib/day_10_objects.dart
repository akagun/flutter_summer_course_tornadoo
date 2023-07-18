class Sprite {
  Sprite(int x, int y) {
    this.x = x;
    this.y = y;
  }
  int x = 0;
  int y = 0;

  void sayMyLocation() {
    print('My Location is $x and $y');
  }
}

class NamedSprite {
  NamedSprite({required int x, required int y}) {
    this.x = x;
    this.y = y;
  }

  int x = 0;
  int y = 0;
  void sayMyLocation() {
    print('My Location is $x and $y');
  }
}

class Animal {
  String name = '';
  String type = '';
  void makenoise() {
    print('Animal roaring');
  }

  Animal({required String name, required String type}) {
    this.name = name;
    this.type = type;
  }
}

class Hero {
  int level = 0;
  String type = '';
  void dofight() {
    print('Im fighting');
  }
Hero({required int level, required String type}) {
    this.level = level;
    this.type = type;
}
  void showlevel() {
    print('Im at level 10');
  }
}

void main() {
  final Sprite catSprite = Sprite(10, 40);
  print(catSprite);
  catSprite.sayMyLocation();
  final Animal cat = Animal(name: 'cat', type: 'cat');
  cat.makenoise();
  print(cat.name);
  final Hero hero = Hero(level: 10, type: 'hero');
  hero.dofight();
 hero.showlevel();
}
