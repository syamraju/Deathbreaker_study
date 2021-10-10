import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int days = 30;
    var name = 'unslpash';

    return Scaffold(
      appBar: AppBar( title:Text("App Data"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome all to $days " + name),
        ),
      ),
    drawer: Drawer(),
    );
  }
}