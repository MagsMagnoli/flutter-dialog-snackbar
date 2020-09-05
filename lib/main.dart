import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dialog Snackbar Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          child: Text('Show Dialog'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Scaffold(
                  backgroundColor: Colors.transparent,
                  body: Builder(
                    builder: (context) => GestureDetector(
                      onTap: () {},
                      child: AlertDialog(
                        title: Text('SnackBar Dialog'),
                        content: RaisedButton(
                          child: Text('Show SnackBar'),
                          onPressed: () {
                            Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text('Hello, SnackBar!')),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
