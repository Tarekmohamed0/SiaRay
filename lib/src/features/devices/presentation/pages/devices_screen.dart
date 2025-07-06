// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:redacted/redacted.dart';
import 'package:svg_flutter/svg.dart';

import 'package:final_project/src/features/devices/domain/entities/sub_device.dart';

class DevicesScreen extends StatelessWidget {
  DevicesScreen({
    super.key,
    required this.subDevices,
  });
  final List<SubDevice> subDevices;
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
              itemCount: subDevices.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 * 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 20,
                  mainAxisExtent: 100),
              itemBuilder: (context, index) {
                final subDevice = subDevices[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push('/SelectTv',
                          extra: subDevice
                              .subsubdevices); // Pass the subDevice to the next screen
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
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
                            buildIicons(
                              context,
                              subDevices: subDevice,
                            ),
                            Center(
                              child: Text(
                                subDevice.name,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12.spMin),
                              ),
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

Widget buildIicons(BuildContext context, {required SubDevice subDevices}) {
  return switch (subDevices.name) {
    'Television' => SvgPicture.asset(
        'assets/icons/smart_tv.svg',
        color: Colors.blue,
        width: 30.w,
        height: 30.h,
      ),
    'Refrigerator' => SvgPicture.asset(
        'assets/icons/refrechgator.svg',
        color: Colors.blue,
        width: 30.w,
        height: 30.h,
      ),
    'Laptop' => SvgPicture.asset(
        'assets/icons/laptop.svg',
        color: Colors.blue,
        width: 30.w,
        height: 30.h,
      ),
    'Washing Machine' => SvgPicture.asset(
        'assets/icons/projector.svg',
        color: Colors.blue,
        width: 30.w,
        height: 30.h,
      ),
    'Air Conditioner' => SvgPicture.asset(
        'assets/icons/ac.svg',
        color: Colors.blue,
        width: 30.w,
        height: 30.h,
      ),
    'Microwave' => SvgPicture.asset(
        'assets/icons/wifi.svg',
        color: Colors.blue,
        width: 30.w,
        height: 30.h,
      ),
    // TODO: Handle this case.
    String() => Icon(
        Icons.library_add,
        color: Colors.blue,
        size: 30,
      ),
  };
}
