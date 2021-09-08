import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter Basic",
      home: Homepage(),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // place Appbar code here
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Text(
            'Instagram',
            style: TextStyle(
                fontFamily: 'Cookie, cursive', fontStyle: FontStyle.italic),
          ),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.add_box_outlined), onPressed: () {}),
            IconButton(
              icon: const Icon(Icons.favorite_border_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.message_outlined),
              onPressed: () {},
            ),
          ],
        ),

        // set body
        body: new Stack(
          children: <Widget>[
            Container(
              color: Colors.black87,
              alignment: Alignment.topLeft,
            ),
            Container(
              child: ListView(
                children: <Widget>[
                  Row(children: <Widget>[
                    new Icon(
                      Icons.add_a_photo_outlined,
                      size: 65,
                      color: Colors.white,
                    ),
                    new Icon(
                      Icons.circle_outlined,
                      size: 65,
                      color: Colors.white,
                    ),
                    new Icon(
                      Icons.circle_outlined,
                      size: 65,
                      color: Colors.white,
                    )
                  ]),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.circle_outlined, size: 35),
                    title: Text(
                      'Flutter',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing:
                        Icon(Icons.more_vert_rounded, color: Colors.white),
                  ),
                  Divider(),
                  new Image(
                    image: new NetworkImage(
                        "https://yt3.ggpht.com/ytc/AKedOLRt1d4p7bPylasq_66BIC8-k3hkyVjJ2JICQITK=s900-c-k-c0x00ffffff-no-rj"),
                    width: 400,
                  ),
                  Row(children: <Widget>[
                    new Icon(
                      Icons.favorite_outline_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    new Icon(
                      Icons.mode_comment_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    new Icon(
                      Icons.send_outlined,
                      color: Colors.white,
                      size: 30,
                    )
                  ]),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "1.000 Suka",
                            style: new TextStyle(
                              color: Colors.white,
                              fontFamily: "Serif",
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Flutter   ",
                            style: new TextStyle(
                              color: Colors.white,
                              fontFamily: "Serif",
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            " is real",
                            style: new TextStyle(
                              color: Colors.white,
                              fontFamily: "Serif",
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              alignment: Alignment.topLeft,
                            ),
                            onPressed: () {},
                            child: Text('Lihat Semua Komentar'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ListTile(
                    leading: Icon(Icons.circle_outlined, size: 35),
                    title: Text(
                      'Username',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing:
                        Icon(Icons.more_vert_rounded, color: Colors.white),
                  ),
                  Divider(),
                  new Image(
                    image: new NetworkImage(
                        "https://yt3.ggpht.com/ytc/AKedOLRt1d4p7bPylasq_66BIC8-k3hkyVjJ2JICQITK=s900-c-k-c0x00ffffff-no-rj"),
                    width: 400,
                  ),
                  Row(children: <Widget>[
                    new Icon(
                      Icons.favorite_outline_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    new Icon(
                      Icons.mode_comment_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    new Icon(
                      Icons.send_outlined,
                      color: Colors.white,
                      size: 30,
                    )
                  ]),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "1.000 Suka",
                            style: new TextStyle(
                              color: Colors.white,
                              fontFamily: "Serif",
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Flutter   ",
                            style: new TextStyle(
                              color: Colors.white,
                              fontFamily: "Serif",
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            " is real",
                            style: new TextStyle(
                              color: Colors.white,
                              fontFamily: "Serif",
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              alignment: Alignment.topLeft,
                            ),
                            onPressed: () {},
                            child: Text('Lihat Semua Komentar'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  ListTile(
                    leading: Icon(Icons.circle_outlined, size: 35),
                    title: Text(
                      'Username',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing:
                        Icon(Icons.more_vert_rounded, color: Colors.white),
                  ),
                  Divider(),
                  new Image(
                    image: new NetworkImage(
                        "https://yt3.ggpht.com/ytc/AKedOLRt1d4p7bPylasq_66BIC8-k3hkyVjJ2JICQITK=s900-c-k-c0x00ffffff-no-rj"),
                    width: 400,
                  ),
                  Row(children: <Widget>[
                    new Icon(
                      Icons.favorite_outline_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    new Icon(
                      Icons.mode_comment_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    new Icon(
                      Icons.send_outlined,
                      color: Colors.white,
                      size: 30,
                    )
                  ]),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "1.000 Suka",
                            style: new TextStyle(
                              color: Colors.white,
                              fontFamily: "Serif",
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Flutter   ",
                            style: new TextStyle(
                              color: Colors.white,
                              fontFamily: "Serif",
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            " is real",
                            style: new TextStyle(
                              color: Colors.white,
                              fontFamily: "Serif",
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          TextButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              alignment: Alignment.topLeft,
                            ),
                            onPressed: () {},
                            child: Text('Lihat Semua Komentar'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
