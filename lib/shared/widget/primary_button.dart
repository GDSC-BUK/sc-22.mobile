import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key,
      required this.onTap,
      required this.buttonTitle,
      this.buttonColor = Colors.blueAccent,
      this.width = 150})
      : super(key: key);
  final Function(Function, Function, ButtonState) onTap;
  final String buttonTitle;
  final Color buttonColor;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ArgonButton(
        height: 50,
        width: width,
        borderRadius: 25.0,
        color: buttonColor,
        loader: Container(
          padding: const EdgeInsets.all(10),
          child: const CircularProgressIndicator(
            color: Colors.white,
            // size: loaderWidth ,
          ),
        ),
        onTap: onTap,
        child: Text(
          buttonTitle,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
