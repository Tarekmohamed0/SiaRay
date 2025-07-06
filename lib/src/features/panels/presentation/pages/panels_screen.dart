import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/features/panels/presentation/bloc/panels_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:svg_flutter/svg.dart';

class PanelsScreen extends StatefulWidget {
  const PanelsScreen({super.key});

  @override
  State<PanelsScreen> createState() => _PanelsScreenState();
}

class _PanelsScreenState extends State<PanelsScreen> {
  bool isSwitched = false;
  // متغير لتخزين رقم التسلسل
  String? deviceSerialNumber;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // طلب بيانات الجهاز عند بدء الشاشة
    sl<PanelsBloc>().add(GetDevice());
  }

  // تأكد من أن القيم متطابقة بين selectedValue و items
  String selectedValue = 'manual';
  List<String> items = [
    'manual',
    'auto',
  ];
  @override
  Widget build(BuildContext context) {
    final bloc = sl<PanelsBloc>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20,
            ),
            const SizedBox(width: 10),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Panels',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
              Text(
                'Solar panel',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.sp,
                ),
              ),
            ]),
            Spacer(),
            DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                isExpanded: true,
                // hint: const Row(
                //   children: [
                //     Icon(
                //       Icons.list,
                //       size: 16,
                //       color: Colors.yellow,
                //     ),
                //     SizedBox(
                //       width: 4,
                //     ),
                //     Expanded(
                //       child: Text(
                //         'Select Item',
                //         style: TextStyle(
                //           fontSize: 14,
                //           fontWeight: FontWeight.bold,
                //           color: Colors.yellow,
                //         ),
                //         overflow: TextOverflow.ellipsis,
                //       ),
                //     ),
                //   ],
                // ),
                items: items
                    .map((String item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ))
                    .toList(),
                value: selectedValue,
                onChanged: (value) {
                  if (value == null) return;

                  Logger().e('Selected value: $value');

                  // استخدام رقم التسلسل المخزن إذا كان متاحًا
                  if (deviceSerialNumber != null) {
                    // إذا كان رقم التسلسل متاح، أرسل event التوجل مباشرة
                    bloc.add(ToggelMode(
                      serial_number: deviceSerialNumber!,
                      mode: value.toLowerCase(),
                    ));
                    Logger().d(
                        'Toggling mode to ${value.toLowerCase()} for device $deviceSerialNumber');
                  } else {
                    // إذا لم يكن رقم التسلسل متاحًا، استخدم القيمة الافتراضية
                    // والأفضل هنا هو طلب بيانات الجهاز أولاً
                    Logger()
                        .d('No device serial number available, using default');
                    bloc.add(GetDevice());

                    // استخدام قيمة افتراضية للـ serial number
                    bloc.add(ToggelMode(
                      serial_number: 'barcsaa',
                      mode: value.toLowerCase(),
                    ));
                  }

                  setState(() {
                    selectedValue = value;
                  });

                  if (selectedValue == 'manual') {
                    print('Selected manual mode');
                  } else if (selectedValue == 'auto') {
                    print('Selected auto mode');
                  }
                },
                buttonStyleData: ButtonStyleData(
                  height: 30,
                  width: 120,
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(color: Colors.black26, width: 1),
                    color: Colors.white,
                  ),
                  elevation: 0,
                ),
                iconStyleData: const IconStyleData(
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                  ),
                  iconSize: 20,
                  iconEnabledColor: Colors.black,
                  iconDisabledColor: Colors.grey,
                ),
                dropdownStyleData: DropdownStyleData(
                  maxHeight: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,
                  ),
                  offset: const Offset(-20, 0),
                  scrollbarTheme: ScrollbarThemeData(
                    radius: const Radius.circular(40),
                    thickness: WidgetStateProperty.all(6),
                    thumbVisibility: WidgetStateProperty.all(true),
                  ),
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40,
                  padding: EdgeInsets.only(left: 14, right: 14),
                ),
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: BlocProvider.value(
        value: bloc,
        child: BlocListener<PanelsBloc, PanelsState>(
          listener: (context, state) {
            // استمع للتغييرات في الحالة
            if (state is DeviceLoaded && state.device.device != null) {
              // تخزين رقم التسلسل عندما يتم تحميل بيانات الجهاز
              deviceSerialNumber = state.device.device!.serial_number;
              Logger()
                  .d('Device data loaded, serial number: $deviceSerialNumber');
            } else if (state is DeviceToggled) {
              // يمكنك إضافة منطق معالجة هنا عند تغيير وضع الجهاز
              Logger().d('Device mode toggled: ${state.message}');
            } else if (state is Error) {
              // عرض رسالة خطأ للمستخدم
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Error: ${state.message}')),
              );
            }
          },
          child: Column(
            children: [
              // header container
              Container(
                  height: 200.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/smart_panel.png')),
                  ),
                  width: MediaQuery.sizeOf(context).width,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  child: Stack(
                    children: [
                      Positioned(
                          bottom: 5.h,
                          right: 0.w,
                          child: InkWell(
                            onTap: () {
                              sl<PanelsBloc>().isSwitchOn
                                  ? showdialog(
                                      context,
                                      iconPath: 'assets/icons/power.svg',
                                      content:
                                          'Are you sure you want to turn off?',
                                      confirmText: 'Closing',
                                      onConfirm: () async {
                                        // sl<PanelsBloc>().isSwitchOn = false;
                                        sl<PanelsBloc>().add(ToggleDevice(
                                            status: 'off',
                                            serial_number: sl<PanelsBloc>()
                                                    .state is DeviceLoaded
                                                ? (sl<PanelsBloc>().state
                                                        as DeviceLoaded)
                                                    .device
                                                    .device!
                                                    .serial_number!
                                                : 'barca'));
                                        sl<PanelsBloc>().add(GetDevice());
                                        Navigator.pop(context);
                                      },
                                      cancelText: 'Cancel',
                                    )
                                  : showdialog(
                                      context,
                                      iconPath: 'assets/icons/power.svg',
                                      content:
                                          'Are you sure you want to turn off?',
                                      confirmText: 'open',
                                      onConfirm: () {
                                        // sl<PanelsBloc>().isSwitchOn = true;
                                        sl<PanelsBloc>().add(ToggleDevice(
                                            status: 'on',
                                            serial_number: sl<PanelsBloc>()
                                                    .state is DeviceLoaded
                                                ? (sl<PanelsBloc>().state
                                                        as DeviceLoaded)
                                                    .device
                                                    .device!
                                                    .serial_number!
                                                : 'barca'));
                                        sl<PanelsBloc>().add(GetDevice());
                                        Navigator.pop(context);
                                      },
                                      cancelText: 'Cancel',
                                    );
                            },
                            child: BlocConsumer<PanelsBloc, PanelsState>(
                              listener: (context, state) {},
                              builder: (context, state) {
                                if (state is DeviceLoaded) {
                                  sl<PanelsBloc>().isSwitchOn =
                                      state.device.device?.status == 'on'
                                          ? true
                                          : false;
                                  return Container(
                                    height: 40.h,
                                    width: 40.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/icons/power.svg',
                                      color: sl<PanelsBloc>().isSwitchOn
                                          ? Colors.green
                                          : Colors.red,
                                    ),
                                  );
                                }
                                return Container(
                                  height: 40.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/icons/power.svg',
                                    color: sl<PanelsBloc>().isSwitchOn
                                        ? Colors.green
                                        : Colors.red,
                                  ),
                                );
                              },
                            ),
                          )),
                    ],
                  )),

              // body container

              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 0.w,
                    mainAxisSpacing: 0.h,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push('/PanelInfoScreen');
                      },
                      child: Container(
                        margin: EdgeInsets.all(8.w),
                        height: 117.h,
                        width: 119.w,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 3,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.grey.shade200),
                              child: SvgPicture.asset(
                                'assets/icons/panel.svg',
                                height: 30,
                                width: 30,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'sh #123456',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              'Mansoura',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// PreferredSizeWidget appBar(BuildContext context, {required String selectedValue,List<String> items = const ['Day', 'Week', 'Month']}) {
//   return AppBar(
//       elevation: 0,
//       title:);
// }

Future showdialog(
  BuildContext context, {
  String? title,
  String? iconPath,
  required String confirmText,
  required String cancelText,
  required String content,
  VoidCallback? onConfirm,
  VoidCallback? onCancel,
}) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          content: SizedBox(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  iconPath ?? 'assets/icons/power.svg',
                  height: 30,
                  color: Colors.red,
                ),
                SizedBox(height: 20),
                Text(
                  content,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          actions: [
            Row(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        minimumSize: WidgetStateProperty.all(Size(142, 59)),
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                        backgroundColor:
                            WidgetStateProperty.all(Color(0xffFC5452))),
                    onPressed: onConfirm,
                    child: Text(
                      confirmText,
                      style: TextStyle(color: Colors.white),
                    )),
                ElevatedButton(
                    style: ButtonStyle(
                        minimumSize: WidgetStateProperty.all(Size(142, 59)),
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                        backgroundColor:
                            WidgetStateProperty.all(Color(0xff808B8B))),
                    onPressed: onCancel ??
                        () {
                          Navigator.pop(context);
                        },
                    child: Text(
                      cancelText,
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            )
          ],
        );
      });
}
