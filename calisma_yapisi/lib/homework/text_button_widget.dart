import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  String description;
  Color backgroundColor;
  Color textColor;
  void Function()? onPressed;



  TextButtonWidget(
      this.description, this.backgroundColor, this.textColor, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    return SizedBox(
      width: ekranGenisligi/1.5,
      height: ekranYuksekligi/6,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),

        ),
        child: Text(
          description,
          style:TextStyle(color: textColor),
        ),
      ),
    );
  }
}

