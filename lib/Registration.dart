import 'package:flutter/material.dart';

class Registrationform extends StatefulWidget {
  const Registrationform({Key? key}) : super(key: key);

  @override
  _RegistrationformState createState() => _RegistrationformState();
}

class _RegistrationformState extends State<Registrationform> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(

         title: Center(child: Text("Registration Form")),
       ),
      body: Column(
        children: [
          Container(

            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width ,
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: CircleAvatar(
                    radius:MediaQuery.of(context).size.width * 0.1,
                  ),
                ),
                SizedBox(width: 16,),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(

                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.8,
                      color: Colors.white,
                      // padding: EdgeInsets.only( ),

                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Container(

                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width * 0.8,
                              color: Colors.white,

                              child: Row(
                                children: [
                                  Container(
                                    height:MediaQuery.of(context).size.height * 0.2,
                                    width:MediaQuery.of(context).size.width * 0.3,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          labelText: 'Name',
                                          labelStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.normal,
                                          )),
                                    ),
                                  ),
                                  SizedBox(width:40),// Add vertical spacing
                                  Container(
                                    height:MediaQuery.of(context).size.height * 0.2,
                                    width:MediaQuery.of(context).size.width * 0.3,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelText: 'Age',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            width: MediaQuery.of(context).size.width * 0.8,
                            color: Colors.white,
                            child: Row(
                              children: [
                                Container(
                                  height:MediaQuery.of(context).size.height * 0.2,
                                  width:MediaQuery.of(context).size.width * 0.3,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        labelText: 'Height',
                                        labelStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.normal,
                                        )),
                                  ),
                                ),
                                SizedBox(width:40),// Add vertical spacing
                                Container(
                                  height:MediaQuery.of(context).size.height * 0.2,
                                  width:MediaQuery.of(context).size.width * 0.3,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      labelText: 'Weight',
                                      labelStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(


              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                color: Colors.black12,
              ),
                    height: 80,
                    width:550,

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

// child: Row(
// children: [
// CircleAvatar(
// radius: 80,
// ),
// SizedBox(width: 50),
// Column(
// children: [
// Container(
// height: MediaQuery.of(context).size.height * 0.3,
// width: MediaQuery.of(context).size.height * 0.3,
// child: Row(
// children: [
// SizedBox(
// height: MediaQuery.of(context).size.height * 0.3,
// child: TextField(
// decoration: InputDecoration(
// labelText: 'Name',
// labelStyle: TextStyle(
// color: Colors.black,
// fontSize: 16.0,
// fontWeight: FontWeight.normal,
// )),
// ),
// ),
// SizedBox(height: 7), // Add vertical spacing
// TextField(
// decoration: InputDecoration(
// labelText: 'Age',
// labelStyle: TextStyle(
// color: Colors.black,
// fontSize: 16.0,
// fontWeight: FontWeight.normal,
// ),
// ),
// ),
// ],
// ),
// ),
// ],
// ),
// ],
// )
