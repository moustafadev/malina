import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:malina/core/customers/custom_text.dart';
import 'package:malina/core/style/color.dart';

import '../../../../core/constants.dart';

class QrWidget extends StatelessWidget {
  const QrWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = SizeConfig.width;
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kMalina,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/qr.svg'),
            SizedBox(
              width: width * .03,
            ),
            SizedBox(
                width: width / 1.6,
                child: CustomText(
                  text: 'Сканируй QR-код и заказывай прямо в заведении',
                  size: 16,
                  fontWeight: FontWeight.w700,
                )),
          ],
        ),
      ),
    );
  }
}
