import 'package:e_learn/core/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../widgets/custom_text_field.dart';

class SearchBar extends StatelessWidget {

  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 85.w,
      height: 6.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: Offset(20, 15),
              blurRadius: 15,
              spreadRadius: 1,
              color: Colors.grey.withOpacity(0.03),
            )
          ]
      ),
      child: CustomTextField(
        hint: AppStrings.searchBar,
        prefixIcon: Icon(Icons.search,size: 5.w,color: Colors.grey,),
      ),
    );
  }
}
