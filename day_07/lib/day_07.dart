void main(){
  print("hello dart");
  print(4 + 5);
  print(12 + 5);
  print(13 + 5);
  print(14 + 5);
  print(45 + 5);

  add();
  int result = f1(1, 2);
  print(result);
  f(2, 3);
  f1(1, 2);
  add1(2, 4);
  average(1,4,5);
  minimum(4, 4);
}
int f1(int x, int y) {
  return x * x + y * y;

}
void f(int x, int y){
  print(x * x + y * y);
}
void add(){
  print(4 + 5);

}
// exercise 01
void add1(int x, int y){
  print(x + y);


}
void average(int x, int y, int z){
  print(( x + y + z) / 3);
}
// exercise 03
void minimum (int x, int y){
  if(y < x) {
    print("x is greater than y");
  }
  else if (x == y){
    print(" x and y are equal");
  }
  else {
    print("y is greater than x");
  }


}
// exercise 04
void helloPersonAndPet (String person, String pet){
print("hello $person and your furry $pet");
}
