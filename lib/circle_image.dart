import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final double circleRadius;
  final ImageProvider? imageProvider;
  const CircleImage({Key? key,
    this.circleRadius = 20,
    this.imageProvider}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: circleRadius,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: circleRadius - 5,
        backgroundImage: imageProvider,
      ),
    );
  }
}
