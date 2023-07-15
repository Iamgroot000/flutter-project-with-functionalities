import 'package:flutter/material.dart';
import 'package:untitled2/Whatsappclone.dart';

//import 'main.dart';


class whatsapp extends StatefulWidget {
  const whatsapp({super.key});

  @override
  State<whatsapp> createState() => _whatsappState();
}

class _whatsappState extends State<whatsapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Whatsapp",
      theme: ThemeData(
        primaryColor: Color(0xff075e54),
        hintColor: Color(0xff25D366),

      ),
      debugShowCheckedModeBanner: false,
      home: WhatsappHome(),
    );

  }
}













