import 'package:flutter/material.dart';

void main() {
  runApp(MyPage());
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) {
          return Scaffold(
            body: SafeArea(
              child: Container(
                color: Colors.amber,
                child: Center(
                  child: Column(
                    children: [
                      Text('my-gh-page'),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/fdl');
                        },
                        child: Text('fdl'),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      },
    );
  }
}
