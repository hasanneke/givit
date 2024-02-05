import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool listOrders;

  const MyCard(
      {required this.title, required this.subtitle, required this.listOrders});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green[50],
      child: ListTile(
        title: Text(title),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            color: listOrders ? Colors.black : Colors.green[800],
          ),
        ),
      ),
    );
  }
}
