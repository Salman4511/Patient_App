import 'package:flutter/material.dart';
import 'package:patient_details/utils/constants.dart';

class SymptomsContainerWidget extends StatelessWidget {
  final String text;
  final bool isEditable;
  const SymptomsContainerWidget({
    super.key,
    required this.text,
    required this.isEditable,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Colors.green.shade100,
          borderRadius: BorderRadius.circular(10)),
      child: Row(children: [
        kwidth10,
        Text(
          text,
          style: const TextStyle(fontSize: 18),
        ),
        const Spacer(),
        isEditable == true
            ? IconButton(onPressed: () {}, icon: const Icon(Icons.edit))
            : const SizedBox(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.close))
      ]),
    );
  }
}
