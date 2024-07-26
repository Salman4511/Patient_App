import 'package:flutter/material.dart';
import 'package:patient_details/utils/constants.dart';

class BottomSheetContent extends StatefulWidget {
  const BottomSheetContent({super.key});

  @override
  State<BottomSheetContent> createState() => _BottomSheetContentState();
}

class _BottomSheetContentState extends State<BottomSheetContent> {
  String _selectedPeriod = 'days';
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  color: Colors.green.shade300,
                  child: const Center(
                      child: Text(
                    'Sx',
                    style:
                        TextStyle(color: kwhite, fontWeight: FontWeight.bold),
                  )),
                ),
                const SizedBox(width: 8.0),
                const Text(
                  'Fever',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                const Text(
                  'Time Period',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                kwidth10,
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                kwidth10,
                SizedBox(
                  width: 110,
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      suffixIcon: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          icon: const Icon(Icons.arrow_drop_down),
                          value: _selectedPeriod,
                          items: <String>['days', 'weeks', 'months']
                              .map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedPeriod = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 8.0),
              ],
            ),
            const SizedBox(height: 16.0),
            const Text(
              'PRIVATE NOTES',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.green.shade100,
              child: TextFormField(
                maxLines: 10,
                decoration: const InputDecoration(
                  hintText: '  Add your notes here.',
                ),
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
    );
  }
}
