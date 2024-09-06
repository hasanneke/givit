import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:givit/shared/model/comment/comment.dart';
import 'package:givit/shared/model/mock/mock_data.dart';
import 'package:givit/shared/model/product/product.dart';
import 'package:givit/shared/model/profile/profile.dart';
import 'package:go_router/go_router.dart';
part 'widget/product_owner_info_view.dart';
part 'widget/product_header_view.dart';
part 'widget/product_comments.dart';
part 'widget/product_app_bar.dart';
part 'widget/product_request_button.dart';
part 'widget/product_send_comment_dialog_view.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: _AppBar(product: product),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _ProductHeaderView(product: product),
                    _ProductOwnerInfoView(
                      product: product,
                      textTheme: textTheme,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                              text: '! ',
                              style: TextStyle(color: Colors.red, fontSize: 16),
                            ),
                            TextSpan(
                              text: 'Alıcı Ödemeli',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall
                                  ?.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    _CommentsView(
                      onSendCommentPressed: () async {
                        final res = makeCommentDialog(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
            _RequestItemButton(product: product)
          ],
        ),
      ),
    );
  }

  Future<Comment?> makeCommentDialog(BuildContext context) async {
    final res = await showDialog<Comment?>(
      context: context,
      builder: (context) => const _SendCommentDialogView(),
    );
    return res;
  }
}
