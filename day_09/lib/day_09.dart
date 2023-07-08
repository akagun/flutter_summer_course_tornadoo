class Sprite {
  Sprite(String name) {
    this.name = name;
  }
  String name = 'Sprite';
  int x = 0;
  int y = 0;
  bool isShow = true;
  int size = 100;
  int direction = 90;
  void move(int x) {
    this.x = x;
  }

  //say function
  String say() {
    return this.name;
  }

  void changeYby(int y) {
    this.y = y;
  }

//changesize
  void changeSizeBy(int size) {
    this.size = size;
  }

  //for loop
  void saytext5times(String x) {
    for (int i = 0; i < 5; i++) {
      print(x);
    }
  }

  //06
  void changedirectionby(int direction) {
    this.direction = direction;
  }
  //07

  String getDirection() {
    if (this.direction > 0 && 90 >= this.direction) {
      return 'south east ${this.direction}';
    } else if (this.direction > 90 && 180 >= this.direction) {
      return 'south west ${this.direction}';
    } else if (this.direction > 180 && 270 >= this.direction) {
      return 'north west ${this.direction}';
    } else if (this.direction > 270 && 360 >= this.direction) {
      return 'north east ${this.direction}';
    } else {
      return '';
    }
  }
  //08

}

void main() {
  print('day 09 - tornado');
  final Button = Sprite('Button');
  final Witch = Sprite('Witch');
  final Guitar = Sprite('Guitar');
  final Ball = Sprite('Ball');
  print(Button.x);
  Button.move(10);
  print(Button.x);
  print(Button.say());
  //let other objects say
  print(Witch.say());
  print(Guitar.say());
  print(Ball.say());
  Button.move(10);
  print(Button.x);
  Button.changeYby(30);
  print(Button.y);
  Witch.changeYby(40);
  print(Witch.y);
  Witch.move(30);
  print(Witch.x);
  Guitar.move(40);
  print(Guitar.x);
  Guitar.changeYby(200);
  print(Guitar.y);
  Guitar.changeYby(30);
  print(Guitar.y);
  Guitar.move(20);
  print(Guitar.x);
  Ball.changeYby(200);
  print(Ball.y);
  Ball.move(300);
  print(Ball.x);
  Button.changeSizeBy(200);
  print(Button.size);
  Witch.changeSizeBy(120);
  print(Witch.size);
  Guitar.changeSizeBy(450);
  print(Guitar.size);
  Ball.changeSizeBy(567);
  print(Ball.size);
  Button.saytext5times('text');
  Button.changedirectionby(100);
  print(Button.direction);
  print(Button.getDirection());
}
