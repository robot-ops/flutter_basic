import 'package:flutter/material.dart';

import 'home_content.dart';

/// This is the stateless widget that the main application instantiates.
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  List<Widget> _content() {
    return <Widget>[
      HomeContent(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // place Appbar code here
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('Instagram',
            style: TextStyle(
                fontFamily: 'Cookie, cursive', fontStyle: FontStyle.italic)),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.add_box_outlined), onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.favorite_border_outlined),
              onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.message_outlined), onPressed: () {}),
        ],
      ),
      body: Stack(children: _content()),
    );
  }
}

class SignUP extends StatefulWidget {
  @override
  _SignUpState createState() => new _SignUpState();
}

class _SignUpState extends State<SignUP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black87,
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}
