import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  final List<CartItem> cartItems;

  CartPage({required this.cartItems});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1EBDB),
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return CartItemWidget(
            item: cartItems[index],
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: ElevatedButton(
          child: Text(
            'Purchase',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF39B93E), // Background color of button
            padding: EdgeInsets.symmetric(vertical: 16), // Set padding
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(8), // Set rounded corner radius
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

class CartItem {
  final String imageaddr;
  final String name;
  final String description;
  final double price;

  CartItem({
    required this.imageaddr,
    required this.name,
    required this.description,
    required this.price,
  });
}

class CartItemWidget extends StatelessWidget {
  final CartItem item;

  CartItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: <Widget>[
            Image.asset(item.imageaddr,
                height: 150, width: 150, fit: BoxFit.cover),
            SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  item.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 5),
                Text(
                  item.description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  ('\₹${item.price.toStringAsFixed(2)}'),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
