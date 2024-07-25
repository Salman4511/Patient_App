import 'package:flutter/material.dart';
import 'package:patient_details/utils/constants.dart';
import 'package:patient_details/view/diagnosis/widgets/symptoms_container_widget.dart';
import 'package:patient_details/view/home/widgets/drawer_widget.dart';
import 'package:patient_details/widgets/container_widget.dart';

class Diagnosis3Screen extends StatefulWidget {
  const Diagnosis3Screen ({super.key});

  @override
  State<Diagnosis3Screen> createState() => _Diagnosis3ScreenState();
}

class _Diagnosis3ScreenState extends State<Diagnosis3Screen >
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Degital Prescription',
          style: TextStyle(fontSize: 23),
        ),
        leading: const Icon(Icons.arrow_back),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DrawerWidget(),
                  ));
            },
          ),
          const SizedBox(
            width: 10,
          )
        ],
        backgroundColor: Colors.green.shade100.withOpacity(0.5),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Symptoms & Diagnosis',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
              ),
              const Divider(
                color: Colors.black,
              ),
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  hintText: 'Search by symptoms or diagnosis',
                  hintStyle: const TextStyle(fontSize: 14),
                  border: const OutlineInputBorder(),
                  prefixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Symptoms',
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
               SymptomsContainerWidget(text: 'Fever - 2 days', isEditable: true,),
              kheight10,
               SymptomsContainerWidget(
                text: 'Seizures - 1 days', isEditable: true,
              ),
              kheight10,
               SymptomsContainerWidget(
                text: 'Chills - 1 days', isEditable: true,
              ),
              kheight10,
               Text(
                'Assosiated Symptoms',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.green.shade300),
              ),
              kheight10,
              const Row(
                children: [
                  ContainerWidget(
                    width: 155,
                    text: 'Shallow Breathing',
                  ),
                  kwidth10,
                  ContainerWidget(width: 80, text: 'Fever')
                ],
              ),
              kheight10,
              const Row(
                children: [
                  ContainerWidget(
                    width: 140,
                    text: 'Sweating & Chills',
                  ),
                  kwidth10,
                  ContainerWidget(width: 100, text: 'HeadAche'),
                  kwidth10,
                  ContainerWidget(
                    width: 100,
                    text: 'Muscle Pain',
                  ),
                ],
              ),
              kheight10,
              
              const Divider(),
               kheight10,
              Text(
                'Differential Diagnosis',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade300),
              ),
              kheight10,
              const Row(
                children: [
                  ContainerWidget(
                    width: 110,
                    text: 'pneumonia',
                  ),
                  kwidth10,
                  ContainerWidget(width: 80, text: 'Malaria'),
                  kwidth10,
                  ContainerWidget(
                    width: 80,
                    text: 'Typhoid',
                  ),
                ],
              ),
              kheight10,
              const Row(
                children: [
                  ContainerWidget(
                    width: 120,
                    text: 'Common cold',
                  ),
                  kwidth10,
                  ContainerWidget(width: 100, text: 'Influneza')
                ],
              ),
              kheight10,
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kgrey.shade400,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    child: const Text('Clear',style: TextStyle(color: kwhite,fontWeight: FontWeight.bold),),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade300,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    child: const Text('Save',
                      style:
                          TextStyle(color: kwhite, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )

            ],
                  ),
                ),
          )),
    );
  }
}

