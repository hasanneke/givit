import 'package:flutter/material.dart';

class OrderView extends StatefulWidget {
  @override
  _OrderViewState createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  bool listOrders = true;

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
                  foregroundColor: listOrders
                      ? MaterialStateProperty.all(Colors.green[900])
                      : MaterialStateProperty.all(Colors.grey),
                ),
                onPressed: () {
                  setState(() {
                    listOrders = true;
                  });
                },
                child: const Text('My Orders'),
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor: listOrders
                      ? MaterialStateProperty.all(Colors.grey)
                      : MaterialStateProperty.all(Colors.green[900]),
                ),
                onPressed: () {
                  setState(() {
                    listOrders = false;
                  });
                },
                child: const Text('My Donations'),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listOrders ? 15 : 15,
              itemBuilder: (context, index) {
                return MyCard(
                  listOrders: listOrders,
                  title: listOrders
                      ? 'Order ${index + 1}'
                      : 'Donation ${index + 1}',
                  subtitle:
                      listOrders ? 'Order Details' : '+### Donation Points',
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
