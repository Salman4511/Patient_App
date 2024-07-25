import 'package:flutter/material.dart';
import 'package:patient_details/utils/constants.dart';
import 'package:patient_details/view/home/home.dart';
import 'package:patient_details/view/patient_details/widgets/details_textform_widget.dart';
import 'package:intl/intl.dart';

class PatientDetailsScreen extends StatefulWidget {
  const PatientDetailsScreen({super.key});

  @override
  State<PatientDetailsScreen> createState() => _PatientDetailsScreenState();
}

class _PatientDetailsScreenState extends State<PatientDetailsScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _mobileController = TextEditingController();
  final _birthController = TextEditingController();
  final _genderController = TextEditingController();
  final _ageController = TextEditingController();
  final _spo2Controller = TextEditingController();
  final _pulseController = TextEditingController();
  final _rbsController = TextEditingController();

  bool _isFormValid = false;

  final List<String> _genderItems = ['Male', 'Female', 'Other'];

  @override
  void initState() {
    super.initState();
    _nameController.addListener(_validateForm);
    _mobileController.addListener(_validateForm);
    _birthController.addListener(_validateForm);
    _genderController.addListener(_validateForm);
    _ageController.addListener(_validateForm);
    _spo2Controller.addListener(_validateForm);
    _pulseController.addListener(_validateForm);
    _rbsController.addListener(_validateForm);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _mobileController.dispose();
    _birthController.dispose();
    _genderController.dispose();
    _ageController.dispose();
    _spo2Controller.dispose();
    _pulseController.dispose();
    _rbsController.dispose();
    super.dispose();
  }

  void _validateForm() {
    setState(() {
      _isFormValid = _nameController.text.isNotEmpty &&
          _mobileController.text.isNotEmpty &&
          _birthController.text.isNotEmpty &&
          _genderController.text.isNotEmpty &&
          _ageController.text.isNotEmpty &&
          _spo2Controller.text.isNotEmpty &&
          _pulseController.text.isNotEmpty &&
          _rbsController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patient Details'),
        actions: [
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.close_outlined,
                size: 20,
              ),
            ),
          ),
          kwidth18,
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Personal details',
                    style: TextStyle(fontSize: 16, color: kgrey.shade600),
                  ),
                  kheight10,
                  DetailsTextFormWidget(
                    text: 'Name',
                    controller: _nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  kheight10,
                  DetailsTextFormWidget(
                    text: 'Mobile no.',
                    controller: _mobileController,
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your mobile number';
                      } else if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                        return 'Please enter a valid 10-digit mobile number';
                      }
                      return null;
                    },
                  ),
                  kheight10,
                  Row(
                    children: [
                      SizedBox(
                        width: 181,
                        child: DetailsTextFormWidget(
                          text: 'Birthdate',
                          suffixIcon: IconButton(
                              onPressed: () async {
                                DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1950),
                                    lastDate: DateTime(2100));

                                if (pickedDate != null) {
                                  String formattedDate =
                                      DateFormat('yyyy-MM-dd')
                                          .format(pickedDate);
                                  setState(() {
                                    _birthController.text = formattedDate;
                                  });
                                }
                              },
                              icon: const Icon(Icons.calendar_month)),
                          controller: _birthController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please select your birthdate';
                            }
                            return null;
                          },
                        ),
                      ),
                      kwidth10,
                      SizedBox(
                        width: 181,
                        child: DetailsTextFormWidget(
                          text: 'Age',
                          controller: _ageController,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your age';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  kheight10,
                  DetailsTextFormWidget(
                    text: 'Gender',
                    suffixIcon: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return ListView.builder(
                                itemCount: _genderItems.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                    ),
                                    child: ListTile(
                                      style: ListTileStyle.drawer,
                                      title: Text(_genderItems[index]),
                                      onTap: () {
                                        setState(() {
                                          _genderController.text =
                                              _genderItems[index];
                                          Navigator.pop(context);
                                        });
                                      },
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        },
                        icon: const Icon(Icons.keyboard_arrow_down)),
                    controller: _genderController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your gender';
                      }
                      return null;
                    },
                  ),
                  kheight10,
                  Text(
                    'Vitals',
                    style: TextStyle(fontSize: 16, color: kgrey.shade600),
                  ),
                  kheight10,
                  Row(
                    children: [
                      const SizedBox(
                          width: 110,
                          child: Text(
                            ' SpO2 levels',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )),
                      kwidth10,
                      SizedBox(
                        width: 150,
                        child: DetailsTextFormWidget(
                          text: '',
                          controller: _spo2Controller,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter SpO2 levels';
                            }
                            return null;
                          },
                        ),
                      ),
                      kwidth10,
                      const Text('%',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  kheight10,
                  Row(
                    children: [
                      const SizedBox(
                        width: 110,
                        child: Text(
                          ' Pulse rate',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      kwidth10,
                      SizedBox(
                        width: 150,
                        child: DetailsTextFormWidget(
                          text: '',
                          controller: _pulseController,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter pulse rate';
                            }
                            return null;
                          },
                        ),
                      ),
                      kwidth10,
                      const Text('beats/min',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  kheight10,
                  Row(
                    children: [
                      const SizedBox(
                        width: 110,
                        child: Text(
                          ' RBS',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      kwidth10,
                      SizedBox(
                        width: 150,
                        child: DetailsTextFormWidget(
                          text: '',
                          controller: _rbsController,
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter RBS';
                            }
                            return null;
                          },
                        ),
                      ),
                      kwidth10,
                      const Text('mg/dl',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  kheight10,
                  kheight10,
                  Center(
                    child: InkWell(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                         Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()),
                          );
                        }
                      },
                      child: Container(
                        height: 100,
                        width: 300,
                        decoration: BoxDecoration(
                          color: _isFormValid ? Colors.green : kgrey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                            child: Text(
                          ' Proceed to Symptoms & Diagnsis',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20, color: kwhite),
                        )),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
