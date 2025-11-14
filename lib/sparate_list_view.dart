import 'package:flutter/material.dart';

class SparateListView extends StatelessWidget {
  const SparateListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sparate List View')),
      body: ListView.separated(
        itemCount: 5,
        padding: EdgeInsets.all(16.0),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            height: 60,
            color: Colors.blue[100],
            child: Center(
              child: Text(
                'Item ${index + 1}',
                style: TextStyle(fontSize: 12.0),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(color: Colors.grey, thickness: 1.0);
        },
      ),
    );
  }
}
