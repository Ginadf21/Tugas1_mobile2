import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  final String username;
  const DashboardPage({super.key, required this.username});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 25),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)),
              child: Text(
                "Welcome :  ${widget.username}",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ));
  }
}
