import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../logic/cart_provider.dart';
import '../models/cart_model.dart';
import '../models/item_model.dart';
import '../models/sqflite.dart';

class EventBookingPage extends StatefulWidget {
  const EventBookingPage({super.key});
  @override
  State<EventBookingPage> createState() => _EventBookingPageState();
}

class _EventBookingPageState extends State<EventBookingPage> {
  late DBHelper dbHelper = DBHelper();

  List<Item> events = [
    Item(
      name: 'Shirt', date: 'piece', price: 2000, image: '/images/shirt.jpg'),
    Item(
      name: 'Short',
      date: 'piece',
      price: 1500,
      image: '/images/shorts.jpg'),
    Item(
      name: 'Pants',
      date: 'piece',
      price: 2500,
      image: '/images/pants.jpg'),
    Item(
      name: 'Skirt',
      date: 'piece',
      price: 1800,
      image: '/images/skirt.jpg'),
    Item(
      name: 'Dress',
      date: 'piece',
      price: 3000,
      image: '/images/dress.jpg'),
    
    Item(
      name: 'Coat',
      date: 'piece',
      price: 4500,
      image: '/images/coat.jpg'),
    Item(name: 'Jumper', date: 'Pc', price: 2800, image: '/images/jumper.jpg'),
    Item(
      name: 'Carpet',
      date: 'piece',
      price: 12000,
      image: '/images/carpet.jpg'),
    Item(
      name: 'Duvet',
      date: 'piece',
      price: 10000,
      image: '/images/duvet.jpg'),
	Item(
	name: 'Motor-Vehicle', date: 'Pc', price: 2400, image: '/images/car.jpg'
	),
  ];

@override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context );
    void saveData(int index) {
    dbHelper
        .insert(
      Cart(
        id: index,
        productId: index.toString(),
        productName: events[index].name,
        initialPrice: events[index].price,
        productPrice: events[index].price,
        quantity: ValueNotifier(1),
        dateTag: events[index].date,
        image: events[index].image,
      ),
    )
        .then((value) {
      cart.addTotalPrice(events[index].price.toDouble());
      cart.addCounter();
      if (kDebugMode) {
        print('Ticket Added to cart');
      }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        print(error.toString());
      }
    });
    }
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
      shrinkWrap: true,
      itemCount: events.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.blueGrey.shade200,
          elevation: 5.0,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image(
                  height: 80,
                  width: 80,
                  image: AssetImage(events[index].image.toString()),
                ),
                SizedBox(
                  width: 130,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 5.0,
                      ),
                      RichText(
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        text: TextSpan(
                            text: 'Name: ',
                            style: TextStyle(
                                color: Colors.blueGrey.shade800,
                                fontSize: 16.0),
                            children: [
                              TextSpan(
                                  text:
                                      '${events[index].name.toString()}\n',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                            ]),
                      ),
                      RichText(
                        maxLines: 1,
                        text: TextSpan(
                            text: 'Date: ',
                            style: TextStyle(
                                color: Colors.blueGrey.shade800,
                                fontSize: 16.0),
                            children: [
                              TextSpan(
                                  text:
                                      '${events[index].date.toString()}\n',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                            ]),
                      ),
                      RichText(
                        maxLines: 1,
                        text: TextSpan(
                            text: 'Price: ' r"UGX",
                            style: TextStyle(
                                color: Colors.blueGrey.shade800,
                                fontSize: 16.0),
                            children: [
                              TextSpan(
                                  text:
                                      '${events[index].price.toString()}\n',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                            ]),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey.shade900),
                  onPressed: () {
                    saveData(index);
                  },
                  child: const Text('Add to Cart')),
              ],
            ),
          ),
        );
    });}
}