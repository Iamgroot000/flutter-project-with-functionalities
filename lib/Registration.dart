import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  final _pageController = PageController();
  final _questions = [
    'Father Name',
    'Mother Name',
    'Aadhar ID',
    'Phone No',
    'Blood Group',
  ];

  int _currentPageIndex = 0;
  List<String> _answers = ['', '', '', '', ''];
  List<TextEditingController> _answerControllers = [];

  void _goToPage(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _goToNextPage() {
    if (_currentPageIndex < _questions.length - 1) {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        setState(() {
          _currentPageIndex++;
        });
        _goToPage(_currentPageIndex);
      }
    } else {
      // Reached the end of the questions, you can perform additional actions here
    }
  }

  void _goToPreviousPage() {
    if (_currentPageIndex > 0) {
      setState(() {
        _currentPageIndex--;
      });
      _goToPage(_currentPageIndex);
    }
  }

  void _updateAnswer(String value) {
    _answers[_currentPageIndex] = value;
  }

  @override
  void initState() {
    super.initState();
    _answerControllers = List.generate(
      _questions.length,
          (index) => TextEditingController(),
    );
  }

  @override
  void dispose() {
    for (final controller in _answerControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Center(child: Text("Registration Form")),
      ),
      body: Column(
        children: [
          Container(

            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.white),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.lightGreen,
                    radius: MediaQuery.of(context).size.width * 0.1,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.8,
                      color: Colors.white,
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Container(
                                height:
                                MediaQuery.of(context).size.height * 0.2,
                                width:
                                MediaQuery.of(context).size.width * 0.8,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Container(
                                      height: MediaQuery.of(context)
                                          .size
                                          .height *
                                          0.2,
                                      width: MediaQuery.of(context)
                                          .size
                                          .width *
                                          0.3,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'Name',
                                          labelStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        validator: (value) {
                                          if (value == null ||
                                              value.isEmpty) {
                                            return 'Please enter your name';
                                          }
                                          return null;
                                        },
                                        onSaved: (value) {
                                          _answers[0] = value ?? '';
                                        },
                                      ),
                                    ),
                                    const SizedBox(width: 40),
                                    Container(
                                      height: MediaQuery.of(context)
                                          .size
                                          .height *
                                          0.2,
                                      width: MediaQuery.of(context)
                                          .size
                                          .width *
                                          0.3,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'Age',
                                          labelStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        validator: (value) {
                                          if (value == null ||
                                              value.isEmpty) {
                                            return 'Please enter your age';
                                          }
                                          return null;
                                        },
                                        onSaved: (value) {
                                          _answers[1] = value ?? '';
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height:
                              MediaQuery.of(context).size.height * 0.2,
                              width:
                              MediaQuery.of(context).size.width * 0.8,
                              color: Colors.white,
                              child: Row(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context)
                                        .size
                                        .height *
                                        0.2,
                                    width: MediaQuery.of(context)
                                        .size
                                        .width *
                                        0.3,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Height',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null ||
                                            value.isEmpty) {
                                          return 'Please enter your height';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) {
                                        _answers[2] = value ?? '';
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 40),
                                  Container(
                                    height: MediaQuery.of(context)
                                        .size
                                        .height *
                                        0.2,
                                    width: MediaQuery.of(context)
                                        .size
                                        .width *
                                        0.3,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Weight',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null ||
                                            value.isEmpty) {
                                          return 'Please enter your weight';
                                        }
                                        return null;
                                      },
                                      onSaved: (value) {
                                        _answers[3] = value ?? '';
                                      },
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: _goToNextPage,
                                    child: const Text("Next"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12,
                          ),
                          height: 50,
                          width: 550,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              if (_currentPageIndex > 0)
                                Container(
                                  child: ElevatedButton(
                                    onPressed: _goToPreviousPage,
                                    child: const Text("Back"),
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(16),
                                    ),
                                  ),
                                ),
                              Text(
                                _questions[_currentPageIndex],
                                style: const TextStyle(fontSize: 18),
                              ),
                              if (_currentPageIndex < _questions.length - 1)
                                Container(
                                  child: ElevatedButton(
                                    onPressed: _goToNextPage,
                                    child: const Text("Next"),
                                    style: ElevatedButton.styleFrom(
                                      shape: CircleBorder(),
                                      padding: EdgeInsets.all(16),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue, // Customize the color of the circle
                      ),
                      // Add any other widgets or content you want here
                    ),
                  ),
                  SizedBox(width: 10,),
                  Positioned(
                    bottom: 80, // Adjust the position as needed
                    left: 16, // Adjust the position as needed
                    right: 16, // Adjust the position as needed
                    child: Container(
                      height: 50,
                      width: 100,
                      child: TextField(
                        controller: _answerControllers[_currentPageIndex],
                        onChanged: _updateAnswer,
                        decoration: InputDecoration(
                          labelText: 'Answer', // The label text for the TextField
                          //border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
