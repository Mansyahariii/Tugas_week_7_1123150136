import 'package:flutter/material.dart';

class SparateListViewHorizontal extends StatelessWidget {
  const SparateListViewHorizontal({super.key});

  get products =>
      null ??
      [
        {'name': 'Product 1', 'price': 50000, 'icon': Icons.phone_iphone},
        {'name': 'Product 2', 'price': 75000, 'icon': Icons.laptop_mac},
        {'name': 'Product 3', 'price': 60000, 'icon': Icons.headset},
        {'name': 'Product 4', 'price': 85000, 'icon': Icons.watch},
        {'name': 'Product 5', 'price': 40000, 'icon': Icons.tablet_mac},
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sparate List View Horizontal')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsGeometry.all(16),
            child: Text(
              "Featured Products",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              // padding: EdgeInsets.symmetric(horizontal: 16.0),
              padding: EdgeInsets.all(8.0),
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.0);
              },
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];

                return Container(
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(product['icon'], size: 60, color: Colors.blue),
                      SizedBox(height: 12),
                      Text(
                        product['name'],
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Rp ${product['price'] ~/ 1000}K',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
