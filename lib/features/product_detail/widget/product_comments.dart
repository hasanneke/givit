part of '../product_detail_page.dart';

class _CommentsView extends StatelessWidget {
  const _CommentsView({
    super.key,
    required this.onSendCommentPressed,
  });
  final void Function()? onSendCommentPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CommentHeader(onPressed: onSendCommentPressed),
        const Divider(),
        ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (context, index) => const Divider(),
          padding: const EdgeInsets.symmetric(horizontal: 8),
          itemCount: Comment.comments.length,
          itemBuilder: (context, index) => ListTile(
            leading: const FlutterLogo(),
            contentPadding: EdgeInsets.zero,
            dense: true,
            title: Text(Comment.comments[index].text),
          ),
        ),
      ],
    );
  }
}

class _CommentHeader extends StatelessWidget {
  const _CommentHeader({
    super.key,
    required this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Sohbet',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          TextButton(
            onPressed: onPressed,
            child: const Text('Yorum gönder'),
          )
        ],
      ),
    );
  }
}
