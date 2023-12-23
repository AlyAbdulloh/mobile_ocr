import 'package:mobile_ocr/models/item.dart';

class ItemSeeder {
  List<Item> listItems() => [
        Item(
            nim: '2141720039',
            nama: 'ACHMAD ALY ABDULLOH',
            ttl: 'Mojokerto, 11 April 2003',
            prodi: 'D-IV T. INFORMATIKA'),
      ];

  void addItem(Item newItem) {
    listItems().add(newItem);
  }
}
