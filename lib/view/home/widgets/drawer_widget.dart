import 'package:flutter/material.dart';
import 'package:patient_details/utils/constants.dart';
import 'package:patient_details/widgets/container_widget.dart';
import 'package:patient_details/widgets/menu_container_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 700,
      child: Drawer(
        backgroundColor: kgrey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              kheight10,
              Container(
                height: 280,
                decoration: BoxDecoration(
                  color: kwhite,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(children: [
                  Row(
                    children: [
                      kwidth10,
                      const Text(
                        'Vitals',
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: const Text('Edit',
                              style: TextStyle(fontSize: 18))),
                    ],
                  ),
                  kheight10,
                  const Wrap(
                    spacing: 4,
                    children: [
                      MenuContanierWidget(),
                      MenuContanierWidget(),
                      MenuContanierWidget(),
                      MenuContanierWidget(),
                    ],
                  ),
                  kheight10,
                  const Row(
                    children: [
                      MenuContanierWidget(),
                      kwidth10,
                      MenuContanierWidget(),
                    ],
                  )
                ]),
              ),
              kheight10,
              Container(
                decoration: BoxDecoration(
                  color: kwhite,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          kwidth10,
                          const Text(
                            'Past History',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          TextButton(
                              onPressed: () {},
                              child: const Text('Edit',
                                  style: TextStyle(fontSize: 18))),
                        ],
                      ),
                      const Text(
                        '  Family history',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: kgrey),
                      ),
                      kheight10,
                      const ContainerWidget(
                          width: double.infinity, text: 'Asthma, Hypertension'),
                          kheight10,
                          const Text(
                        '  Medical Procedures',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: kgrey),
                      ),
                      kheight10,
                      const ContainerWidget(
                          width: double.infinity, text: 'Asthma, Hypertension'),
                          kheight10,
                          const Text(
                        '  Medication',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: kgrey),
                      ),
                      kheight10,
                      const ContainerWidget(
                          width: double.infinity, text: 'Asthma, Hypertension'),
                          kheight10,
                          const Row(
                            children: [
                              Text(
                        '  Allergies - ',
                        style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: kgrey),
                      ),
                       Text(
                            'Pollen, Sunlight ',
                            style: TextStyle(
                                fontSize: 16,
                                ),
                          ),
                            ],
                          ),
                           const Row(
                        children: [
                          Text(
                            '  Phobias/Fears - ',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: kgrey),
                          ),
                          Text(
                            'Pollen, Sunlight ',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                       
                     
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
