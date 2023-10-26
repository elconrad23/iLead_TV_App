class Item {
  final String name;
  final int price;
  final String date;
  final String image;

  Item({required this.name, required this.date, required this.price, required this.image});
  Map toJson() {
    return {
      'name': name,
      'date': date,
      'price': price,
      'image': image,
    };
  }
}