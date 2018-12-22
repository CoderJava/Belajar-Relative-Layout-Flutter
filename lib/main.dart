import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "RelativeLayout",
          ),
        ),
        body: Container(
          key: Key("Root"),
          padding: const EdgeInsets.all(16),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Center Left",
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Center Screen",
                ),
              ),
              Row(
                key: Key("Row Root"),
                children: <Widget>[
                  Column(
                    key: Key("Column Expanded Row Root Kiri"),
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Top Left",
                            key: Key("Text Top Left"),
                          ),
                          Text(
                            "Top Left 2",
                            key: Key("Text Top Left 2"),
                          )
                        ],
                      ),
                      Text(
                        "Bottom Left",
                        key: Key("Text Bottom Left"),
                      ),
                    ],
                  ),
                  Expanded(
                    key: Key("Expanded Row Root Tengah"),
                    child: Column(
                      key: Key("Column Expanded Row Root Tengah"),
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "Top Center",
                              key: Key("Text Top Center"),
                            ),
                            Text(
                              "",
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                Text(
                                  "Top Center 3",
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          "Bottom Center",
                          key: Key("Text Bottom Center"),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    key: Key("Expanded Row Root Kanan"),
                    child: Column(
                      key: Key("Column Expanded Row Root Kanan"),
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Top Right",
                          key: Key("Text Top Right"),
                        ),
                        Text(
                          "Center Right",
                          key: Key("Text Center Right"),
                        ),
                        Text(
                          "Bottom Right",
                          key: Key("Text Bottom Right"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
