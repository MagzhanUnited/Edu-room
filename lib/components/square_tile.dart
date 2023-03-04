import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  final double height;
  const SquareTile({super.key, required this.imagePath, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.white),
          color: Colors.grey[200]),
      child: Image.asset(
        imagePath,
        height: height,
      ),
    );
  }
}
