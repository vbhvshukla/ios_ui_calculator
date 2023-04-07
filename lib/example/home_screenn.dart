import 'package:firebasetut/example/screen_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Home')),
        backgroundColor: Colors.teal,
      ),
      drawer: SafeArea(
        child: Drawer(
          child: Padding(
            padding: EdgeInsets.zero,
            child: ListView(
              children: [
                //DrawerHeader(child: Text('Navigator')),
                UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.teal,
                    ),
                    currentAccountPicture: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://res.infoq.com/news/2021/08/GitHub-codespaces-transition/en/headerimage/github-logo-1629113298105.jpg')),
                    accountName: Text('Admin'),
                    accountEmail: Text('admin@atle.site')),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () {
                    Navigator.pushNamed(context, HomeScreen.id);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.account_box_outlined),
                  title: Text('About us'),
                  onTap: () {
                    Navigator.pushNamed(context, ScreenTwo.id);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.contact_phone),
                  title: Text('Contact us'),
                  onTap: () {
                    Navigator.pushNamed(context, ScreenTwo.id);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: TextButton(
                  onPressed: () {
                    //Navigator.push(context, CupertinoPageRoute(builder: (context)=>ScreenTwo()));
                    Navigator.pushNamed(context, ScreenTwo.id);
                  },
                  child: Text('Move to Screen 2')))
        ],
      ),
    );
  }
}
