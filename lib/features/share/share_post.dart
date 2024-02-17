import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';

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
                items: const [],
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.browse_gallery_outlined,
                ),
                label: const Text('Fotoğraf Ekle'),
              ),
              const Gap(12),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
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
