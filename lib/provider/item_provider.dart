import 'package:flutter/foundation.dart';
import '../models/item.dart';

class ItemProvider extends ChangeNotifier {
  // ข้อมูลตัวอย่างเริ่มต้น
  final List<Item> _items = [
    Item(id: '1', name: 'MacBook Pro', description: 'Apple M3 Pro Chip'),
    Item(id: '2', name: 'Titan 18 HX Dragon Edition', description: 'Intel Core Ultra 9 processor, 48GB*2 RAM'),
    Item(id: '3', name: 'AirPods Max', description: 'AirPods Max (USB-C)'),
  ];

  // Getter เพื่อให้ส่วน UI สามารถเข้าถึงข้อมูลได้
  List<Item> get items => _items;

  // เมธอดสำหรับอัปเดตข้อมูลตาม id
  void updateItem(String id, String newName, String newDescription) {
    final itemIndex = _items.indexWhere((item) => item.id == id);
    if (itemIndex >= 0) {
      _items[itemIndex].name = newName;
      _items[itemIndex].description = newDescription;
      notifyListeners(); // แจ้งเตือนวิดเจ็ตที่กำลัง "ฟัง" อยู่ว่ามีการเปลี่ยนแปลง
    }
  }
}
