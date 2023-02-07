import 'package:flutter/material.dart';

import '../../../../core/customers/custom_text.dart';
import '../../../../core/style/color.dart';

class CardCategoryWidget extends StatelessWidget {
  const CardCategoryWidget({Key? key, required this.color, required this.title}) : super(key: key);

  final Color color;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: SizedBox(
        height: 100,
        width: 100,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: CustomText(
              text: title,
              color: kBlack,
              size: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
