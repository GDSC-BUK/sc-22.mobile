import 'dart:ui';

import 'package:flutter/material.dart';

class PrimaryCard extends StatelessWidget {
  final Widget child;
  final Color color;
  const PrimaryCard({Key? key, required this.child, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 130,
      margin: const EdgeInsets.symmetric(horizontal: 7.5),
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: child,
    );
  }
}
