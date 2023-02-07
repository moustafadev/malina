
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../style/color.dart';





class CustomButton extends StatefulWidget {
  Function()? onPressed;
  final String title;
  final double size;
  Color color;

  CustomButton({
    Key? key,
    this.onPressed,
    required this.title,
    required this.size,
    this.color=kWhite,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kGrey,
        boxShadow: widget.onPressed != null
        ? [
           BoxShadow(
                  blurRadius: 64,
                  color: Colors.yellow.withOpacity(0.25),
                  spreadRadius: 10,
                ),
        ]:[],
      ),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        style: ElevatedButton.styleFrom(
          shadowColor: widget.onPressed != null ? kWhite : null,
          // padding: const EdgeInsets.only(
          //   top: 20,
          //   bottom: 20,
          // ),
          primary: widget.color,
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: width * widget.size / 390,
          ),
          child: FittedBox(
            fit: BoxFit.fill,
            child: AutoSizeText(
              widget.title,
              style: const TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w600,
                color: kBlack,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
