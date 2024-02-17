part of '../product_detail_page.dart';

class _SendCommentDialogView extends StatefulWidget {
  const _SendCommentDialogView({
    super.key,
  });

  @override
  State<_SendCommentDialogView> createState() => _SendCommentDialogViewState();
}

class _SendCommentDialogViewState extends State<_SendCommentDialogView> {
  late TextEditingController textEditingController;

  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Yorum Yap'),
      content: const TextField(
        maxLines: 3,
        decoration: InputDecoration(hintText: 'Yorum içeriği'),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(
              Comment(
                commenter: Profile.dummy,
                text: textEditingController.text,
              ),
            );
          },
          child: const Text('Yorumu Gönder'),
        )
      ],
    );
  }
}
