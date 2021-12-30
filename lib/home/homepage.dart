import 'package:flutter/material.dart';
class homepage extends StatefulWidget {

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppbar()
        ],
      ),
      // body: Center(
      //   child: Text('Home Page'),
      // ),
    );
  }
}

