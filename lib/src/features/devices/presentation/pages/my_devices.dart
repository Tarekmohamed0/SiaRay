import 'package:easy_localization/easy_localization.dart';

import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/features/devices/data/models/subsubdevices_model.dart';
import 'package:final_project/src/features/devices/domain/entities/sub_device.dart';
import 'package:final_project/src/features/devices/presentation/cubit/devices_cubit.dart';
import 'package:final_project/src/features/home/presentation/cubit/home_cubit.dart';
import 'package:final_project/src/features/panels/presentation/bloc/panels_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:redacted/redacted.dart';
import 'package:svg_flutter/svg.dart';

class MyDevices extends StatefulWidget {
  const MyDevices({super.key});

  @override
  State<MyDevices> createState() => _MyDevicesState();
}

class _MyDevicesState extends State<MyDevices>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sl<DevicesCubit>().getSubDeviceHome();
    sl<DevicesCubit>().getSubDevices();
  }

  List<SubDevice>? subdevices;
  bool? isSwitch;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: CustomScrollView(
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
                  'My devices',
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 30),
              child: BlocProvider.value(
                value: sl<DevicesCubit>(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        GoRouter.of(context)
                            .push('/DevicesScreen', extra: subdevices);
                      },
                      child: Container(
                        height: 35.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          spacing: 10,
                          children: [
                            Icon(
                              Icons.add,
                              color: Colors.green,
                            ),
                            Text('Add New device')
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 10.h,
                    // ),
                    BlocConsumer<DevicesCubit, DevicesState>(
                      buildWhen: (previous, current) =>
                          current is DevicesLoadedHome,
                      listenWhen: (previous, current) =>
                          current is DevicesLoadedHome ||
                          current is DevicesLoaded,
                      listener: (context, state) {
                        if (state is DevicesLoaded) {
                          subdevices = state.subdevices;
                        }
                      },
                      builder: (context, state) {
                        if (state is DevicesLoadedHome) {
                          return GridView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisExtent: 136,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10),
                              itemCount:
                                  state.subSubDevices.SubSubDevices?.length ??
                                      1,
                              itemBuilder: (context, index) {
                                final subdevice =
                                    state.subSubDevices.SubSubDevices?[index];
                                return Stack(
                                  children: [
                                    Container(
                                      height: 100.h,
                                      width: MediaQuery.sizeOf(context).width,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 12.0),
                                        child: Column(
                                          spacing: 20,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: buildIicons(context,
                                                  subDevices: subdevice!),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    subdevice.name ?? '',
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                  ),
                                                ),
                                                CupertinoSwitch(
                                                    value: isSwitch =
                                                        subdevice.status == 'on'
                                                            ? true
                                                            : false,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        isSwitch = value;
                                                      });
                                                    })
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 10,
                                      right: 0,
                                      child: Icon(
                                        Icons.more_vert,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                );
                              });
                        }
                        return SizedBox.shrink();
                      },
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget buildIicons(BuildContext context,
    {required SubsubdevicesModel subDevices}) {
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
    5 => SvgPicture.asset(
        'assets/icons/laptop.svg',
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
    3 => SvgPicture.asset(
        'assets/icons/ac.svg',
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
    // Handle unmatched or null cases.
    _ => Icon(
        Icons.library_add,
        color: Colors.blue,
        size: 30,
      ),
  };
}
