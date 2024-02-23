class calculator {
  calculator(this.fruits, this.water);
  int fruits;

  double water;
  String result() {
    if (fruits >= 2 && water >= 2) {
      return 'Good Job You are on the way to be healthy';
    } else {
      return ' You need to do better ';
    }
  }
}
