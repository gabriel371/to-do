import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "ToDo"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.125,
                  width: MediaQuery.of(context).size.width * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.lime[600],
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.125,
                  width: MediaQuery.of(context).size.width * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.lime[600],
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.125,
                  width: MediaQuery.of(context).size.width * 0.25,
                  decoration: BoxDecoration(
                    color: Colors.lime[600],
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            child: Text(
              widget.title,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.check),
            title: Text(
              'Task #1',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.delete),
          ),
          ListTile(
            leading: Icon(Icons.close),
            title: Text(
              'Task #2',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.delete),
          ),
          ListTile(
            leading: Icon(Icons.check),
            title: Text(
              'Task #3',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Icon(Icons.delete),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
        ],
      ),
      backgroundColor: Colors.lime[300],
    );
  }
}
