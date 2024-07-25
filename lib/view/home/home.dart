import 'package:flutter/material.dart';
import 'package:patient_details/utils/constants.dart';
import 'package:patient_details/view/home/widgets/drawer_widget.dart';
import 'package:patient_details/widgets/container_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
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
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Symptoms & Diagnosis',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
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
              'Frequently searched Symptoms',
              style: TextStyle(fontSize: 16, color: kgrey),
            ),
            const SizedBox(
              height: 20,
            ),
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
                  width: 145,
                  text: 'Sweating & Chills',
                ),
                kwidth10,
                ContainerWidget(width: 110, text: 'HeadAche')
              ],
            ),
            kheight10,
            const Row(
              children: [
                ContainerWidget(
                  width: 110,
                  text: 'Muscle Pain',
                ),
              ],
            ),
            const Divider()
          ],
        ),
      )),
    );
  }
}
