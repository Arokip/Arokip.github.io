import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyPage());
}

class MyPage extends StatelessWidget {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            color: Colors.amber,
            child: Center(
              child: Column(
                children: [
                  Text('My personal page.'),
                  SizedBox(height: 16),
                  ElevatedButton(
                    child: Text('github link to fdl'),
                    onPressed: () {
                      _launchURL('https://github.com/Arokip/fdl');
                    },
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    child: Text('fdl demo app'),
                    onPressed: () {
                      _launchURL('https://arokip.github.io/fdl_demo_app');
                    },
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    child: Text('fdl old'),
                    onPressed: () {
                      _launchURL('https://arokip.github.io/fdl_old');
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
