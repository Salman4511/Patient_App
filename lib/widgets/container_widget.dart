import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final double width;
  final String text;
  const ContainerWidget({
    super.key,
    required this.width,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(fontSize: 15),
      )),
    );
  }
}
