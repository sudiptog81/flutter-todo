import 'package:flutter/material.dart';
import 'package:flutter_todo/screens/app_drawer.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo App',
      darkTheme: ThemeData(
        primaryColor: Colors.amber,
      ),
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const Root(title: 'ToDo App'),
    );
  }
}

class Root extends StatefulWidget {
  const Root({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Center(
              child: Text('Nothing Here'), // TODO
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Not Implemented"), // TODO
            ),
          );
        },
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add),
      ),
      drawer: const AppDrawer(
        name: 'FirstName LastName',
        email: 'abc@xyz.com',
        pfp:
            'https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
      ),
    );
  }
}
