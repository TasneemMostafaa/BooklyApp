import 'package:bookly/Features/Search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           CustomSearchTextField(),
           SizedBox(height: 16,),
           Text('Search Result', style: Styles.titleStyle18),
           SizedBox(height: 16,),
        ],
      ),
    );
  }
}