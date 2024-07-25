import 'package:flutter/material.dart';

class MenuContanierWidget extends StatelessWidget {
  const MenuContanierWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '  SpO2',
          ),
          Center(
              child: Icon(
            Icons.water_drop,
            size: 35,
            color: Colors.green,
          )),
          Center(child: Text('91'))
        ],
      ),
    );
  }
}
