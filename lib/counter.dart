class Counter {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
  }

  void decrement() {
    _count > 0 ? _count-- : _count = 0;
  }

  void reset() {
    _count = 0;
  }
}
