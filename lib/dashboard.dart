import 'package:flutter/material.dart';

import 'flowchart.dart';





class MyGridScreen extends StatefulWidget {


  @override
  _MyGridScreenState createState() => _MyGridScreenState();
}

class _MyGridScreenState extends State<MyGridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("THE BOYS' FLOW CHART")),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: GridView.extent(
            primary: false,
            padding: const EdgeInsets.all(16),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            maxCrossAxisExtent: 480.0,
            children: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => flowMyApp()));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20)),


                  padding: const EdgeInsets.all(8),
                  child: Image.asset("assest/ritik.jpeg")

                ),
              ),
              InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => flowMyApp()));
        },
                child: Container(
                decoration: BoxDecoration(color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(8),
                  child: Image.asset("assest/gauravphoto.jpg")

                ),
              ),


              InkWell( onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => flowMyApp()));
              },


                child: Container(
    decoration: BoxDecoration(
        color: Colors.blueGrey,borderRadius: BorderRadius.circular(20)),

                  padding: const EdgeInsets.all(8),
                  child: Image.asset("assest/deepeshphoyo.jpg")

                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => flowMyApp()));
                },
                child: Container(

    decoration: BoxDecoration(
        color: Colors.blueGrey,borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(8),
                  child: Image.asset("assest/yugal.jpg")

                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => flowMyApp()));
                },
                child: Container(

    decoration: BoxDecoration(
        color: Colors.blueGrey,borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(8),
                  child: Image.asset("assest/ravi.jpg")

                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => flowMyApp()));
                },
                child: Container(

                decoration: BoxDecoration(
                    color: Colors.blueGrey,borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(8),
                  child: const Text('Six', style: TextStyle(fontSize: 20)),

                ),
              ),
            ],
          )),
    );
  }
}