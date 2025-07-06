import 'package:final_project/counter.dart';
import 'package:final_project/src/core/config/config.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('test the counter class', () {
    late Counter counter;
    setUp(() {
      counter = Counter();
      // This method is called before each test. You can use it to set up any
      // necessary state or dependencies for your tests.
    });
    test('test the increment method', () {
      counter.increment();
      expect(counter.count, 1);
    });

    test('test the decrement method', () {
      counter.increment();
      counter.increment();
      counter.decrement();
      expect(counter.count, 1);
    });

    test('test the reset method', () {
      counter.increment();
      counter.reset();
      expect(counter.count, 0);
    });
  });
}
