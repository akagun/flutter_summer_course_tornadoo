import 'dart:html';

class CharModel {
  String? currentValue;
  int? currentIndex;
  String? correctValue;
  bool hintShow;
  CharModel(
      {this.hintShow = false,
      this.correctValue,
      this.currentIndex,
      this.currentValue});
  getCurrentValue() {
    if (hintShow) {
      return correctValue;
    }
  }
  clearValue(){
    currentIndex = null;
    correctValue = null;
  }
}
