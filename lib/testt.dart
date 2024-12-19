import 'package:flutter/material.dart';

class Testt extends StatelessWidget {
  const Testt({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              text: 'Tab 1',
            ),
            Tab(
              text: 'Tab 2',
            ),
            Tab(
              text: 'Tab 3',
            ),
          ]),
        ),
        body: TabBarView(children: [
          Container(
              child: Container(
            height: 300,
            width: 300,
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Testt'),
                Text('Testt'),
              ],
            ),
          )),
          Container(
            child: Center(
              child: Text(
                'Testt',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
          Container(
            child: Center(
              child: Text(
                'Testt',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
