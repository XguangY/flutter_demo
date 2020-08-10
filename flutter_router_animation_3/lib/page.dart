import 'package:flutter/material.dart';
import './custome_router.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
          title: Text(
            'first page',
            style: TextStyle(fontSize: 36.0),
          ),
          elevation: 1.0),
      body: Center(
        child: MaterialButton(
          onPressed: () => {
            Navigator.of(context).push(
              CustomRoute(
                SecondPage(),
              ),
            ),
          },
          child: Icon(
            Icons.navigate_next,
            color: Colors.red,
            size: 64.0,
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text(
          'second page',
          style: TextStyle(fontSize: 36.0),
        ),
        elevation: 1.0,
        backgroundColor: Colors.pinkAccent,
        leading: Container(),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () => {
            Navigator.of(context).pop(),
          },
          child: Icon(
            Icons.navigate_before,
            color: Colors.white,
            size: 64.0,
          ),
        ),
      ),
    );
  }
}
