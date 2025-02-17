import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectTv extends StatelessWidget {
  const SelectTv({super.key});

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
        // actions: [
        //   IconButton(
        //       onPressed: () {},
        //       icon: Icon(
        //         Icons.menu,
        //         color: Colors.black,
        //         size: 20,
        //       ))
        // ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: CupertinoSearchTextField(
                  enabled: true,
                  prefixIcon: Icon(Icons.search, color: Colors.black, size: 25),
                  itemColor: Colors.black,
                  backgroundColor: Colors.white,
                  placeholder: 'Search brand',
                  onChanged: (value) {},
                  borderRadius: BorderRadius.circular(10),
                  padding: const EdgeInsets.all(10),
                ),
              ),
              Text('tvbrandmodel'.tr(),
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[600])),
              // ElevatedButton(
              //   onPressed: () {
              //     context.setLocale(Locale('en'));
              //   },
              //   child: Text('arabic'),
              // ),
              SizedBox(
                  height: MediaQuery.sizeOf(context).height,
                  child: brandList(context)),
            ],
          ),
        ),
      ),
    );
  }
}

Widget brandItem(BuildContext context) {
  return Container(
    height: MediaQuery.sizeOf(context).height * 0.07,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          spreadRadius: 1,
          blurRadius: 1,
          offset: const Offset(0, 1),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        spacing: 2,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.grey[200],
            child: Icon(Icons.tv, color: Colors.blue),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('A90J | BRAVIA XP',
                  style: TextStyle(color: Colors.black, fontSize: 12)),
              Text('Samsung', style: TextStyle(color: Colors.grey[600])),
            ],
          ),
          Spacer(),
          TextButton(
              onPressed: () {},
              child: Text('Add device', style: TextStyle(color: Colors.blue)))
        ],
      ),
    ),
  );
}

Widget brandList(BuildContext context) {
  return ListView.builder(
    itemCount: 10,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(5.0),
        child: brandItem(context),
      );
    },
  );
}
