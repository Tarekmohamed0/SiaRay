import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DevicesScreen extends StatelessWidget {
  DevicesScreen({super.key});
  List<dynamic> icons = [
    {'icon': Icons.tv, 'label': 'Smart TV'},
    {'icon': Icons.phone_android, 'label': 'Smart Phone'},
    {'icon': Icons.laptop, 'label': 'Laptop'},
    {'icon': Icons.watch, 'label': 'Smart Watch'},
    {'icon': Icons.lightbulb, 'label': 'Smart Bulb'},
    {'icon': Icons.ac_unit, 'label': 'AC'},
    {'icon': Icons.tv, 'label': 'Smart TV'},
    {'icon': Icons.phone_android, 'label': 'Smart Phone'},
    {'icon': Icons.laptop, 'label': 'Laptop'},
    {'icon': Icons.watch, 'label': 'Smart Watch'},
    {'icon': Icons.lightbulb, 'label': 'Smart Bulb'},
    {'icon': Icons.ac_unit, 'label': 'AC'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
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
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount: icons.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 * 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push('/SelectTv');
                    },
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          spacing: 10,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              icons[index]['icon'],
                              color: Colors.blue,
                              size: 30,
                            ),
                            Text(
                              icons[index]['label'],
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
