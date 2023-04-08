
import 'package:flutter/material.dart';

void main() {
  runApp(registrationForm());
}

class registrationForm extends StatelessWidget {
  const registrationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Registration Form',
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'Registration Form',
            style: TextStyle(color: Colors.white),
          )),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              Image.asset('assets/images/img.png',height: 140,),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.blue, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.black, width: 2)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey)),
                    suffixText: 'Username Exists',
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.orange,
                    )),
              ),
              SizedBox(
                height: 44,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    hintText: 'Enter Your Mobile Number',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.blue, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.black, width: 2)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey)),
                    suffix: Text('Mobile Number Exists'),
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.orange,
                    )),
              ),
              SizedBox(
                height: 44,
              ),
              TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    hintText: 'Enter Your Password',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.blue, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.black, width: 2)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: Colors.grey)),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.orange,
                      ),
                      onPressed: () {
                        print('Icon Pressed');
                      },
                    )),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
             
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      minimumSize: Size(140, 40),
                    ),
                    child: Text('Sign Up'),
                    onPressed: () {
                      print('Sign Up Pressed');
                    },
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  OutlinedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      minimumSize: Size(140, 40),
                    ),
                    child: Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      print('Sign In Pressed');
                    },
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
