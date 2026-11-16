import 'package:bookly/Features/Home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:bookly/core/utils/styles.dart';
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
            padding: EdgeInsets.symmetric(horizontal: width*.2),
            child: const FeaturedListViewItem(),
          ),
          const SizedBox(
            height:25 ,
          ),
          Text('The Jungle Book', style: Styles.titleStyle20,
          ),
          const SizedBox(height: 6,),
          Opacity(
            opacity: .7,
            child: Text('Radyard Kipling', style: Styles.titleStyle16.copyWith(fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500),),
          )
        ],
      ),
    );
  }
}