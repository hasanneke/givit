import 'package:flutter/material.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key, required this.listOrders, required this.onMyOrdersTap, required this.onMyDontaitionsTap, required this.scrollController});
  final bool listOrders;
  final VoidCallback onMyOrdersTap;
  final VoidCallback onMyDontaitionsTap;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                style: ButtonStyle(
                  foregroundColor: listOrders ? MaterialStateProperty.all(Colors.green[900]) : MaterialStateProperty.all(Colors.grey),
                ),
                onPressed: onMyOrdersTap,
                child: const Text('My Orders'),
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor: listOrders ? MaterialStateProperty.all(Colors.grey) : MaterialStateProperty.all(Colors.green[900]),
                ),
                onPressed: onMyDontaitionsTap,
                child: const Text('My Donations'),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listOrders ? 15 : 15,
              controller: scrollController,
              padding: const EdgeInsets.all(0),
              itemBuilder: (context, index) {
                return MyCard(
                  listOrders: listOrders,
                  title: listOrders ? 'Order ${index + 1}' : 'Donation ${index + 1}',
                  subtitle: listOrders ? 'Order Details' : '+### Donation Points',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final bool listOrders;
  final String title;
  final String subtitle;

  const MyCard({
    required this.listOrders,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green[50],
      child: ListTile(
        title: Text(title),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            color: listOrders ? Colors.black : Colors.green[900],
          ),
        ),
      ),
    );
  }
}
