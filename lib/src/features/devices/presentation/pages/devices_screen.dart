import 'package:flutter/material.dart';

class DevicesScreen extends StatelessWidget {
  DevicesScreen({Key? key}) : super(key: key);
  List<dynamic> icons = [
    Icons.tv,
    Icons.phone_android,
    Icons.phone_iphone,
    Icons.watch,
    Icons.laptop,
    Icons.computer,
    Icons.print,
    Icons.router,
    Icons.speaker,
    Icons.lightbulb,
    Icons.ac_unit,
    Icons.lock
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Devices',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
                size: 20,
              ))
        ],
      ),
      body: GridView.builder(
          scrollDirection: Axis.vertical,
          itemCount: icons.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1 * 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(0, 1))
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      icons[index],
                      color: Colors.blue,
                      size: 30,
                    ),
                    Text(
                      'Smart TV',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
