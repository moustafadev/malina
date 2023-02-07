import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/style/color.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: kDarkGrey.withOpacity(.1),
            blurRadius: 3.0,
            offset: const Offset(0, 1.5),
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10),
        child: Row(
          children: [
             Expanded(
              flex: 2,
              child: SvgPicture.asset('assets/images/search.svg'),
            ),
            Expanded(
              flex: 15,
              child: TextField(
                onChanged: (query) {
                },
                decoration:  InputDecoration(
                  hintText: 'Искать в Malina',
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintStyle: TextStyle(
                    color: kDarkGrey,
                    fontSize: 15
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
