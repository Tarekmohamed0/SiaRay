import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveHelper<T> {
  final String boxName;

  HiveHelper(this.boxName);

  /// فتح الـ Box
  Future<Box<T>> openBox() async {
    if (Hive.isBoxOpen(boxName)) {
      return Hive.box<T>(boxName);
    }
    return await Hive.openBox<T>(boxName);
  }

// to listen to changes in the box and update the UI accordingly
  ValueListenable<Box<T>> listenable() {
    final box = Hive.box<T>(boxName);
    return box.listenable();
  }

  /// إضافة عنصر جديد أو تحديثه
  Future<void> addOrUpdate(dynamic key, T value) async {
    final box = await openBox();
    await box.put(key, value);
    print('Item added/updated successfully!');
  }

  /// استرجاع عنصر واحد
  T? get(dynamic key) {
    return Hive.box<T>(boxName).get(key);
  }
  // Future<T?> get(String key) async {
  //   final box = await openBox();
  //   return box.get(key);
  // }

  /// استرجاع كل العناصر
  // Future<List<T>> getAll() async {
  //   final box = await openBox();
  //   return box.values.toList();
  // }

  List<T> getall() {
    return Hive.box<T>(boxName).values.toList();
  }

  /// حذف عنصر معين
  Future<void> delete(dynamic key) async {
    final box = await openBox();
    await box.delete(key);
    print('Item deleted successfully!');
  }

  /// حذف كل العناصر
  Future<void> clearAll() async {
    final box = await openBox();
    await box.clear();
    print('All items cleared successfully!');
  }

  /// التحقق إذا كان العنصر موجودًا
  Future<bool> containsKey(dynamic key) async {
    final box = await openBox();
    return box.containsKey(key);
  }

  /// استرجاع عدد العناصر
  Future<int> count() async {
    final box = await openBox();
    return box.length;
  }

  /// إغلاق الـ Box
  Future<void> closeBox() async {
    if (Hive.isBoxOpen(boxName)) {
      await Hive.box<T>(boxName).close();
    }
  }
}
