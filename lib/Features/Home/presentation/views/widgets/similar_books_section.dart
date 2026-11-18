import 'package:bookly/Features/Home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.titleStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 16),
        const SimilarBooksListView(),
      ],
    );
  }
}
