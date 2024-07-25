import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patient_details/utils/constants.dart';
import 'package:patient_details/view/diagnosis/diagnosis_3_screen.dart';
import 'package:patient_details/view/diagnosis/diagnosis_4_screen.dart';
import 'package:patient_details/view/patient_details/patient_details_screen.dart';
import 'package:patient_details/view/sx_screen/sx_screen.dart';
import 'package:patient_details/widgets/menu_container_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 200,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MenuContainerWidget(
                text: 'Patient Details Page',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PatientDetailsScreen()));
                },
              ),
              kheight10,
              MenuContainerWidget(
                text: 'Sx Screen',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SxScreen()),
                  );
                },
              ),
              kheight10,
              MenuContainerWidget(
                text: 'Diagnosis 3 Page',
                onPressed: () {
                  Navigator.push(context,CupertinoPageRoute(builder: (context) => const Diagnosis3Screen(),));
                },
              ),
              kheight10,
              MenuContainerWidget(
                text: 'Diagnosis 4 Page',
                onPressed: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const Diagnosis4Screen(),
                      ));
                },
              ),
            ],
          ),
        )
      ]),
    );
  }
}
