import 'package:bookly/Features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*.17),
            child: const FeaturedListViewItem(),
          )
        ],
      ),
    );
  }
}