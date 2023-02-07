import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final Color color;
  Function()? onClick;
  final String fontFamily;
  double? height;
  TextAlign? textAlign;
  TextOverflow? overflow;
  int? maxLines;
  bool? underline;

  CustomText({Key? key,
    required this.text,
    this.size = 15,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.white,
    this.onClick,
    this.fontFamily ='Raleway',
    this.height,
     this.textAlign,
     this.overflow,
     this.maxLines,
     this.underline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: onClick == null
          ? Text(
              text,
              textAlign: textAlign,
              style: TextStyle(
                fontSize: size,
                fontWeight: fontWeight,
                color: color,
                fontStyle: FontStyle.normal
              ),
            )
          : TextButton(
              onPressed: onClick,
              child: Text(
                text,
                textAlign: textAlign,
                style: TextStyle(
                  fontSize: size,
                  fontWeight: fontWeight,
                  color: color,
                ),
              ),
            ),
    );
  }
}
