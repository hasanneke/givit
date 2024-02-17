import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:givit/shared/model/product/product.dart';

class RequestProductPage extends StatelessWidget {
  const RequestProductPage({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ürünü Talep Et'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Image.network(
              product.imageUrl,
              height: 200,
            ),
            const Gap(12),
            TextFormField(
              decoration: const InputDecoration(hintText: 'Talep başlığı'),
            ),
            const Gap(12),
            TextFormField(
              maxLines: 6,
              decoration: const InputDecoration(
                hintText: 'Talep mesajı',
              ),
            ),
            const Gap(12),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.send),
              label: const Text('Gönder'),
            ),
          ],
        ),
      ),
    );
  }
}
