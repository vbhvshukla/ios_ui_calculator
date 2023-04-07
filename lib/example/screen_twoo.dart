import 'package:firebasetut/example/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two';
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(itemCount:100,itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage('https://res.infoq.com/news/2021/08/GitHub-codespaces-transition/en/headerimage/github-logo-1629113298105.jpg'),),
                title: Text('Vaibhav Shukla'),
                onTap: () {
                  Navigator.pushNamed(context, ScreenTwo.id);
                },
              );
            }),
          )
        ],
      ),
    );
  }
}
