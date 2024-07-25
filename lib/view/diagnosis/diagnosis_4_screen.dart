import 'package:flutter/material.dart';
import 'package:patient_details/utils/constants.dart';
import 'package:patient_details/view/diagnosis/widgets/symptoms_container_widget.dart';
import 'package:patient_details/view/home/widgets/drawer_widget.dart';
import 'package:patient_details/widgets/container_widget.dart';

class Diagnosis4Screen extends StatefulWidget {
  const Diagnosis4Screen({super.key});

  @override
  State<Diagnosis4Screen> createState() => _Diagnosis4ScreenState();
}

class _Diagnosis4ScreenState extends State<Diagnosis4Screen>
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
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const SymptomsContainerWidget(
                text: 'Fever - 2 days',
                isEditable: true,
              ),
              kheight10,
              const SymptomsContainerWidget(
                text: 'Seizures - 1 days',
                isEditable: true,
              ),
              kheight10,
              const SymptomsContainerWidget(
                text: 'Chills - 1 days',
                isEditable: true,
              ),
              kheight10,
              const Divider(),
              const Text(
                'Diagnosis',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kheight10,
              const SymptomsContainerWidget(
                text: 'Pneumonia',
                isEditable: false,
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
                  ContainerWidget(width: 100, text: 'Malaria'),
                  kwidth10,
                  ContainerWidget(
                    width: 80,
                    text: 'Typhoid',
                  ),
                  kwidth10,
                  ContainerWidget(
                    width: 120,
                    text: 'Common cold',
                  ),
                ],
              ),
              kheight10,
              const Row(
                children: [ContainerWidget(width: 100, text: 'Influneza')],
              ),
              kheight10,
              const Text(
                'PRIVATE NOTES',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
              ),
              const Divider(
                color: Colors.black,
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.green.shade100,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    kheight10,
                    Text(
                      '   Add your notes here.',
                      style: TextStyle(fontSize: 18, color: kgrey),
                    ),
                  ],
                ),
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
                    child: const Text(
                      'Clear',
                      style:
                          TextStyle(color: kwhite, fontWeight: FontWeight.bold),
                    ),
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
                    child: const Text(
                      'Save',
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
