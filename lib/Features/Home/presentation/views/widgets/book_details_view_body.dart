import 'package:bookly/Features/Home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                const BookDetailsSection(),
                const SizedBox(height: 50),
                const SimilarBooksSection(),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
