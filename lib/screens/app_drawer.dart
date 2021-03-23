import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  AppDrawer({Key key, this.name, this.email, this.pfp}) : super(key: key);
  final String name;
  final String email;
  final String pfp;

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(widget.name),
            accountEmail: Text(widget.email),
            currentAccountPicture:
                CircleAvatar(backgroundImage: NetworkImage(widget.pfp)),
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text("About"),
          ),
        ],
      ),
    );
  }
}
