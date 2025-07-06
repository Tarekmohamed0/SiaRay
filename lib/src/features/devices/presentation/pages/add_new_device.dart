import 'package:easy_localization/easy_localization.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/core/widgets/toast_notification.dart';
import 'package:final_project/src/features/devices/domain/entities/sub_sub_device.dart';
import 'package:final_project/src/features/devices/presentation/cubit/devices_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logger/logger.dart';
import 'package:toastification/toastification.dart';

class AddNewDevice extends StatelessWidget {
  AddNewDevice({
    super.key,
    required this.subDeviceId,
  });
  final int subDeviceId;
  final TextEditingController deviceNameController = TextEditingController();
  final TextEditingController energyConsumedController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    Logger().e(subDeviceId);
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: BlocProvider.value(
        value: sl<DevicesCubit>(),
        child: BlocListener<DevicesCubit, DevicesState>(
          listenWhen: (previous, current) =>
              current is deviceAdded || current is DevicesError,
          listener: (context, state) {
            if (state is deviceAdded) {
              toastNotification(
                  context,
                  'Device Added Succsess'.tr(),
                  'device name'.tr(),
                  Alignment.topCenter,
                  ToastificationType.success,
                  ToastificationStyle.fillColored,
                  Icon(Icons.door_back_door),
                  Colors.green);
            }
          },
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                centerTitle: true,
                leading: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.arrow_back_ios, color: Colors.black)),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Add New Devices'.tr(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('AddNewDevice'.tr()),
                      CupertinoTextField(
                        controller: deviceNameController,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(15),
                        placeholder: 'Device Name'.tr(),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text('Energy Consumed'.tr()),
                      CupertinoTextField(
                        controller: energyConsumedController,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(15),
                        placeholder: 'Energy Consumed'.tr(),
                      ),
                      SizedBox(height: 30.h),
                      ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll(Color(0xff468ED1)),
                            shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            minimumSize: WidgetStatePropertyAll(
                              Size(double.infinity, 50),
                            ),
                          ),
                          onPressed: () {
                            sl<DevicesCubit>().addDevice(
                                subDeviceId: subDeviceId,
                                watPerHour:
                                    parseString(energyConsumedController.text),
                                deviceName: deviceNameController.text);
                          },
                          child: Text(
                            'Add Device'.tr(),
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

int parseString(String value) {
  try {
    return int.parse(value);
  } catch (e) {
    throw FormatException('Invalid input: $value is not a valid integer'.tr());
  }
}
