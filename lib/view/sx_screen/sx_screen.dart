import 'package:flutter/material.dart';
import 'package:patient_details/utils/constants.dart';
import 'package:patient_details/view/diagnosis/diagnosis_3_screen.dart';

class SxScreen extends StatefulWidget {
  const SxScreen({super.key});

  @override
  State<SxScreen> createState() => _SxScreenState();
}

class _SxScreenState extends State<SxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              const Text(
                'Sx & Dx',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const Spacer(),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.green.shade200)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Diagnosis3Screen()),
                    );
                  },
                  child: const Text(
                    'Save',
                    style: TextStyle(color: kwhite, fontSize: 16),
                  ))
            ],
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
            '2 selected',
            style: TextStyle(fontSize: 16, color: kgrey),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 30,
                width: 30,
                color: Colors.green.shade300,
                child: const Center(
                    child: Text(
                  'Sx',
                  style: TextStyle(color: kwhite, fontWeight: FontWeight.bold),
                )),
              ),
              const SizedBox(
                width: 150,
              ),
              Container(
                height: 30,
                width: 30,
                color: Colors.red,
                child: const Center(
                    child: Text(
                  'Dx',
                  style: TextStyle(color: kwhite, fontWeight: FontWeight.bold),
                )),
              )
            ],
          ),
        ]),
      )),
    );
  }
}
