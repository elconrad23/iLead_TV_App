import 'package:flutter/material.dart';

class Cart {
  late final int? id;
  final String? productId;
  final String? productName;
  final int? initialPrice;
  final int? productPrice;
  final ValueNotifier<int>? quantity;
  final String? dateTag;
  final String? image;

  Cart(
    {required this.id,
    required this.productId,
    required this.productName,
    required this.initialPrice,
    required this.productPrice,
    required this.quantity,
    required this.dateTag,
    required this.image});

  Cart.fromMap(Map<dynamic, dynamic> data)
    : id = data['id'],
      productId = data['productId'],
      productName = data['productName'],
      initialPrice = data['initialPrice'],
      productPrice = data['productPrice'],
      quantity = ValueNotifier(data['quantity']),
      dateTag = data['dateTag'],
      image = data['image'];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'productId': productId,
      'productName': productName,
      'initialPrice': initialPrice,
      'productPrice': productPrice,
      'quantity': quantity?.value,
      'dateTag': dateTag,
      'image': image,
    };
  }
}