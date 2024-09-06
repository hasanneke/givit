import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SupportUsPage extends StatelessWidget {
  const SupportUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('''Givit'i Destekle'''),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bağış Yap',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Gap(12),
              const TextField(
                decoration: InputDecoration(
                    labelText: 'Tutar',
                    prefixIcon: Icon(Icons.attach_money_rounded)),
              ),
              Gap(12),
              ElevatedButton(onPressed: () {}, child: Text('Gönder')),
              Gap(12),
              Text(
                'Givite yapılan yardımlar ihtiyaç sahibi kişilerin kargo ücretlerini karşılamak, uygulamanın gelişimini desteklemek için kullanılamaktadır',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
