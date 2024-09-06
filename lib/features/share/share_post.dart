import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:givit/shared/model/mock/mock_data.dart';
import 'package:givit/shared/model/product/product.dart';
import 'package:givit/shared/products/bloc/product_bloc.dart';

class SharePostPage extends StatefulWidget {
  const SharePostPage({super.key});

  @override
  State<SharePostPage> createState() => _SharePostPageState();
}

class _SharePostPageState extends State<SharePostPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ürün Paylaş'),
      ),
      body: FormBuilder(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              FormBuilderTextField(
                name: 'title',
                decoration: const InputDecoration(labelText: 'Başlık'),
                validator: FormBuilderValidators.compose(
                  [
                    FormBuilderValidators.required(),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              FormBuilderTextField(
                name: 'description',
                decoration: const InputDecoration(
                    labelText: 'Açıklama', alignLabelWithHint: true),
                maxLines: 5,
                validator: FormBuilderValidators.compose(
                  [
                    FormBuilderValidators.required(),
                  ],
                ),
              ),
              const Gap(8),
              FormBuilderDropdown(
                name: 'category',
                decoration: const InputDecoration(labelText: 'Kategori'),
                items: MockData.categories
                    .map((e) => DropdownMenuItem(value: e, child: Text(e.name)))
                    .toList(),
              ),
              const Gap(12),
              FormBuilderDateRangePicker(
                name: 'date_range',
                firstDate: DateTime.now(),
                lastDate: DateTime.now().add(const Duration(days: 2000)),
                decoration: const InputDecoration(
                    labelText: 'Uygun Kargo Tarih Aralığınız',
                    prefixIcon: Icon(Icons.date_range_outlined)),
              ),
              FormBuilderCheckbox(
                name: 'is_receiver_payment',
                title: const Text(
                  'Alıcı Ödemeli',
                ),
              ),
              const Gap(12),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.saveAndValidate() ?? false) {
                      final product = Product(
                          title: _formKey.currentState?.value['title'],
                          description:
                              _formKey.currentState?.value['description'],
                          profile: MockData.profile,
                          categories: MockData.categories);
                      context
                          .read<ProductBloc>()
                          .add(ProductEvent.create(product: product));
                    }
                  },
                  child: const Text(
                    'Paylaş',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
