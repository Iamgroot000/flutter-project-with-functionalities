import 'package:flutter/material.dart';
import 'package:untitled2/pages/models/call.dart';
import 'package:untitled2/pages/models/camera.dart';
import 'package:untitled2/pages/models/chat.dart';
import 'package:untitled2/pages/models/status.dart';

class WhatsappHome extends StatefulWidget {
  const WhatsappHome({Key? key}) : super(key: key);

  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Whatsapp"),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
             Tab(icon: new Icon(Icons.camera_alt)),
             Tab(text: "CHATS"),
             Tab(text: "STATUS"),
             Tab(text: "CALLS"),

          ],

        ),
        actions: <Widget>[
          Icon(Icons.search),Padding(
              padding:const EdgeInsets.symmetric(horizontal: 5.0)
          ), Icon(Icons.more_vert)
        ],
      ),

      body:TabBarView(
        controller: _tabController,
        children: <Widget>[
           CameraScreen(),
          ChatScreen(),
           StatusScreen(),
           CallsScreen(),

        ],
      ),
      floatingActionButton:  FloatingActionButton(
        backgroundColor: Theme.of(context).hintColor,
        child:  Icon(Icons.message,
          color: Colors.white,),
        onPressed: () =>print("open chats"),
      ),
    );

  }
}



