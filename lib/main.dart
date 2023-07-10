
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'camera.dart';
import 'dashboard.dart';
import 'flowchart.dart';


void main()  {

  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up Example',
      color: Colors.indigoAccent,
      home: SignUpScreen(),
    );
  }
}




class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Sign Up')),

        ),
        body: SignUpForm(),

      );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isSignedUp = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Perform signup logic here
      String name = _nameController.text;
      String email = _emailController.text;
      String password = _passwordController.text;

      // Display success message or navigate to the next screen
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Success'),
            content: Text('Sign up successful!'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {
                    _isSignedUp = true;
                  });
                },
              ),
            ],
          );
        },
      );
    }
  }



  @override
  Widget build(BuildContext context) {
    if (_isSignedUp) {
      return LoginScreen();
    } else {
      return Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(

                child: TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: 'Name'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
              ),
              Container(

                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your email';
                    }
                    // You can add more advanced email validation logic here
                    return null;
                  },
                ),
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a password';
                  }
                  // You can add more advanced password validation logic here
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                child: Text('Sign Up'),
                onPressed: _submitForm,
              ),
            ],
          ),
        ),
      );
    }
  }
}












class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: EdgeInsets.all(16.0),
        child: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Perform login logic here
      String email = _emailController.text;
      String password = _passwordController.text;

      // Display success message or navigate to the next screen
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Success'),
            content: Text('Login successful!'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                  // Navigate to the next screen or perform any desired action
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your email';
              }
              // You can add more advanced email validation logic here
              return null;
            },
          ),
          SizedBox(height: 16.0),
          TextFormField(
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock),
            ),
            obscureText: true,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter a password';
              }
              // You can add more advanced password validation logic here
              return null;
            },
          ),
          SizedBox(height: 24.0),
          ElevatedButton(
            child: Text('Login'),
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>MyHomePage()),
              );


            },
          ),
        ],
      ),
    );
  }
}

/*void main() {
  runApp(MaterialApp(
    title: 'Login Example',
    home: LoginScreen(),
  ));
}
*/










/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
     // home: MyHomePage(),

    );
  }
}
*/

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    FirstTab(),
    SecondTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('FLUTTER')),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(20),
                color: Colors.blueGrey,


              ),

              child: Stack(
                alignment: Alignment.center,
                children: [

                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: IconButton(
                      icon: Icon(Icons.camera_alt),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>CameraExampleHome()),
                        );


                      },

                      // Perform desired action when the camera icon is pressed

                    ),
                  ),
                ],
              ),
            ),


            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Perform desired action for Item 1
                Navigator.pop(context); // Closes the drawer
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Perform desired action for Item 2
                Navigator.pop(context); // Closes the drawer
              },
            ),
            ListTile(
              title: Text('Item 3'),
              onTap: () {
                // Perform desired action for Item 3
                Navigator.pop(context); // Closes the drawer
              },
            ),
          ],
        ),
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Flutter Widgets',
            backgroundColor: Colors.deepOrange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Second Tab',
          ),
        ],
      ),
    );
  }
}

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          image:  DecorationImage(
            image: AssetImage("assets/groot.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        height: 300,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ButtonScreen()),
                  );
                },
                child: Center(child: Text("BUTTONS")),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StackScreen()),
                );
              },
              child: Center(child: Text("STACK")),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(

      child: Container(


        height: 400,
        width: 200,



        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [


            ElevatedButton(
                onPressed: (){ Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyGridScreen()),
                );

                },
                child: Text("Flow chart")
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CameraExampleHome()),

                );
              },
              child: Text("CAMERA"),
            ),
          ],
        ),
      ),);




  }
}

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({Key? key}) : super(key: key);

  @override
  _ButtonScreenState createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: Text("FAB"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("ELEVATED BUTTON"),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text("OUTLINED BUTTON"),
          ),
          TextButton(
            onPressed: () {},
            child: Text("TEXT BUTTON"),
          ),
        ],
      ),
    );
  }
}

class StackScreen extends StatefulWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  _StackScreenState createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            height: 350,
            width: 250,
            color: Colors.black,
          ),
          Positioned(
            top: 30,
            right: 20,
            child: Container(
              height: 160,
              width: 120,
              color: Colors.red,
            ),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: Container(
              height: 80,
              width: 40,
              color: Colors.greenAccent,
            ),
          ),
        ],
      ),
    );
  }
}



/*import 'package:flutter/material.dart';
import 'package:untitled2/signup.dart';

void main()  {
  runApp(MyApp());
}


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Perform login logic here
      String email = _emailController.text;
      String password = _passwordController.text;

      // Display success message or navigate to the next screen
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Success'),
            content: Text('Login successful!'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                  // Navigate to the next screen or perform any desired action
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                // You can add more advanced email validation logic here
                return null;
              },
            ),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter a password';
                }
                // You can add more advanced password validation logic here
                return null;
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text('Login'),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  MyApp ()),
    );
    },

            ),
          ],
        ),
      ),
    );
  }
}

*/
