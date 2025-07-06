import 'package:easy_localization/easy_localization.dart';
import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/core/notifications/toastification.dart';
import 'package:final_project/src/features/devices/data/models/add_sub_device_home_request.dart';
import 'package:final_project/src/features/devices/data/models/sub_devices/subsubdevice.dart';
import 'package:final_project/src/features/devices/domain/entities/sub_device.dart';
import 'package:final_project/src/features/devices/presentation/cubit/devices_cubit.dart';
import 'package:final_project/src/features/devices/presentation/pages/my_devices.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:svg_flutter/svg.dart';
import 'package:toastification/toastification.dart';

import '../../domain/entities/sub_sub_device.dart';

class SelectTv extends StatelessWidget {
  SelectTv({super.key, this.subSubDevices, this.subDeviceID});
  List<SubSubDevice>? subSubDevices;
  final int? subDeviceID;

  final cubit = sl<DevicesCubit>();

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
        child: BlocProvider.value(
          value: cubit,
          child: BlocListener<DevicesCubit, DevicesState>(
            listenWhen: (previous, current) =>
                current is DeviceAddedToHome || current is DevicesError,
            listener: (context, state) {
              if (state is DeviceAddedToHome) {
                toastiFication(context,
                    type: ToastificationType.success,
                    style: ToastificationStyle.fillColored,
                    title: state.addSubDevicesHomeResponse.message,
                    description: state.addSubDevicesHomeResponse.device.name,
                    alignment: Alignment.topCenter);
              } else if (state is DevicesError) {
                toastiFication(context,
                    type: ToastificationType.error,
                    style: ToastificationStyle.fillColored,
                    title: 'Error',
                    description: state.message,
                    alignment: Alignment.topCenter);
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18.0),
                    child: CupertinoSearchTextField(
                      enabled: true,
                      prefixIcon:
                          Icon(Icons.search, color: Colors.black, size: 25),
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
                  SizedBox(
                    height: 10.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push('/AddNewDevice', extra: {
                        'subDeviceId': subSubDevices!.first.subdeviceId,
                      });
                    },
                    child: Container(
                      height: 45.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        spacing: 20,
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.green,
                          ),
                          Text(
                            'Add New device',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     context.setLocale(Locale('en'));
                  //   },
                  //   child: Text('arabic'),
                  // ),
                  SizedBox(
                      height: MediaQuery.sizeOf(context).height,
                      child:
                          brandList(context, subSubDevices ?? [], subDeviceID)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget brandItem(BuildContext context, SubSubDevice subSubDevices) {
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
              backgroundColor: Colors.transparent,
              child: _buildIicons(context, subDevices: subSubDevices)),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(subSubDevices.name,
                  style: TextStyle(color: Colors.black, fontSize: 12)),
              Text('Samsung', style: TextStyle(color: Colors.grey[600])),
            ],
          ),
          Spacer(),
          TextButton(
              onPressed: () {
                sl<DevicesCubit>().addSubDeviceToHome(
                  request: AddSubDeviceHomeRequest(
                      subsubdeviceId: subSubDevices.id, hasDevice: 'yes'),
                );
                Logger().i(subSubDevices.status);
              },
              child: Text('Add device', style: TextStyle(color: Colors.blue)))
        ],
      ),
    ),
  );
}

Widget brandList(
    BuildContext context, List<SubSubDevice> subSubDevices, subDeviceID) {
  return ListView.builder(
    itemCount: subSubDevices.length,
    itemBuilder: (context, index) {
      subDeviceID = subSubDevices[index].subdeviceId;

      final subDevice = subSubDevices[index];
      return Padding(
        padding: const EdgeInsets.all(5.0),
        child: brandItem(context, subDevice),
      );
    },
  );
}

Widget _buildIicons(BuildContext context, {required SubSubDevice subDevices}) {
  return switch (subDevices.subdeviceId) {
    1 => SvgPicture.asset(
        'assets/icons/smart_tv.svg',
        color: Colors.blue,
        width: 30.w,
        height: 30.h,
      ),
    2 => SvgPicture.asset(
        'assets/icons/refrechgator.svg',
        color: Colors.blue,
        width: 30.w,
        height: 30.h,
      ),
    3 => SvgPicture.asset(
        'assets/icons/ac.svg',
        color: Colors.blue,
        width: 30.w,
        height: 30.h,
      ),
    4 => SvgPicture.asset(
        'assets/icons/projector.svg',
        color: Colors.blue,
        width: 30.w,
        height: 30.h,
      ),
    5 => SvgPicture.asset(
        'assets/icons/laptop.svg',
        color: Colors.blue,
        width: 30.w,
        height: 30.h,
      ),
    6 => SvgPicture.asset(
        'assets/icons/wifi.svg',
        color: Colors.blue,
        width: 30.w,
        height: 30.h,
      ),
    // TODO: Handle this case.
    int() => Icon(
        Icons.library_add,
        color: Colors.blue,
        size: 30,
      ),
  };
}
