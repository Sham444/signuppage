import 'package:flutter/material.dart';

void main() {
  runApp(pankaj());
}

class pankaj extends StatelessWidget {
  const pankaj({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'pankaj',
      home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Rich Text Widget'),
            ),
          ),
          body: Center(
            child: RichText(
              text: TextSpan(
                  style: TextStyle(color: Colors.green, fontSize: 21),
                  children: <TextSpan>[
                    TextSpan(text: 'Hello  '),
                    TextSpan(
                        text: 'world  ',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold)),
                    TextSpan(text: 'Welcome  to   '),
                    TextSpan(
                        text: 'Flutter',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 45,
                          color: Colors.deepOrangeAccent,
                          fontStyle: FontStyle.italic,
                          fontFamily: "Montserrat",
                        ))
                  ]),
            ),
          )),
    );
  }
}
