import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:malina/core/customers/custom_text.dart';
import 'package:malina/core/style/color.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {Key? key,
      required this.image,
      required this.title,
      required this.description, required this.color})
      : super(key: key);

  final String image;
  final String title;
  final String description;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        children: [
          Image.asset(image),
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 23),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: title,
                  color: kBlack,
                  size: 22,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: description,
                  color: kBlack,
                  size: 16,
                  fontWeight: FontWeight.w300,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
