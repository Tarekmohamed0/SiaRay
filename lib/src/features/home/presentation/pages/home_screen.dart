import 'dart:math';

import 'package:easy_localization/easy_localization.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:redacted/redacted.dart';
import 'package:svg_flutter/svg.dart';

import 'package:final_project/src/core/utils/auth_services.dart';
import 'package:final_project/src/core/utils/shared/hive_helper.dart';
import 'package:final_project/src/features/home/data/models/batteries/batteries.dart';
import 'package:final_project/src/features/home/data/models/batteries/energy_reading_response.dart';
import 'package:final_project/src/features/home/presentation/cubit/home_cubit.dart';
import 'package:final_project/src/features/home/presentation/widgets/month_chart.dart';
import 'package:final_project/src/features/signup/data/models/user_model.dart';

import '../../../../core/config/config.dart';
import '../../../signup/data/models/user_model.dart';
import '../../../signup/presentation/widgets/bar_chart.dart';
import '../widgets/drobdown_menu.dart';
import '../widgets/line_chart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    this.user,
  });
  final dynamic user;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedValue = 'Week';
  final UserModel? userbox = sl<HiveHelper<UserModel>>().get('cachedUser');
  List<String> items = <String>[
    'Day',
    'Week',
    'Month',
  ];
  Batteries? data;
  EnergyReadingResponse? energyReading;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sl<HomeCubit>().getBatteries();
    sl<HomeCubit>().getBatteryReadings();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final box = HiveHelper<Batteries>('batteries').openBox();
    // final localData = HiveHelper<Batteries>('batteries').getall();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context, userbox),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
          child: BlocConsumer<HomeCubit, HomeState>(
            listener: (context, state) {
              if (state is HomeLoaded) {
                data = state.batteries;
              } else if (state is HomeGetEnergyReadingLoaded) {
                energyReading = state.energyReadingResponse;
              }
            },
            builder: (context, state) {
              return HomeView(
                selectedValue: selectedValue,
                items: items,
                data: data,
                energyReading: energyReading,
              );
            },
          ),
        ),
      ),
    );
  }
}

PreferredSizeWidget appBar(BuildContext context, UserModel? userbox) {
  return AppBar(
    title: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      // appbar content (welcom back, Tarek mohamed, user image)
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 20,
            children: [
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).push('/ProfileScreen');
                },
                child: Hero(
                  tag: 'profile_image',
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: CachedNetworkImage(
                        imageUrl: userbox?.user?.image ??
                            'https://picsum.photos/200/300',
                        placeholder: (context, url) => Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.shade200,
                          ),
                        ).redacted(
                            redact: true,
                            configuration: RedactedConfiguration(
                              animationDuration: Duration(milliseconds: 400),
                              redactedColor: Colors.grey.shade200,
                            ),
                            context: context),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'welcom back,',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    userbox?.user?.name ?? 'Tarek mohamed',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              SvgPicture.asset('assets/icons/Notification.svg'),
              // IconButton(
              //     onPressed: () {
              //       GoRouter.of(context).go('/Subdevice');
              //     },
              //     icon: Icon(Icons.notifications_none)),
              SizedBox(
                width: 10,
              ),
              SvgPicture.asset('assets/icons/Menu2.svg'),
              // IconButton(
              //     onPressed: () {
              //       try {
              //         sl<AuthServices>().signOut();
              //         GoRouter.of(context).go('/SigninScreen');
              //       } catch (e) {
              //         print(e);
              //       }
              //     },
              //     icon: Icon(
              //       Icons.logout,
              //       color: Colors.red,
              //     ))
            ],
          )
        ],
      ),
    ),
  );
}

class HomeView extends StatefulWidget {
  HomeView({
    super.key,
    this.data,
    this.energyReading,
    required this.selectedValue,
    required this.items,
  });
  String selectedValue;
  Batteries? data;
  EnergyReadingResponse? energyReading;
  final List<String> items;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            // color: Colors.red,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey, width: 0.6),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 1),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [
                        Text(
                          'Solar panel',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          'Total generation',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Image(
                              image:
                                  AssetImage('assets/images/smartflowr.png')),
                        ),
                      ),
                    )
                  ],
                ),
                // battery icon
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.battery_5_bar_outlined,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${widget.data?.batteries?.first.battery_readings.first.charge_level ?? 0}%',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 6.0),
                      child: Text(
                        'Battery',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          '${widget.energyReading?.today ?? '0'} ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          'Today',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),

                    // vertical divider
                    Container(
                      height: 50,
                      width: 1,
                      color: Colors.grey,
                    ),
                    Column(
                      children: [
                        Text(
                          '${widget.energyReading?.thisweek ?? '0'}',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          'This week',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 1,
                      color: Colors.grey,
                    ),
                    Column(
                      children: [
                        Text(
                          '${widget.energyReading?.thismonth ?? '0'} ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          'This month',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          height: 421,
          width: double.infinity,
          decoration: BoxDecoration(
            // color: Colors.red,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey, width: 0.6),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                            width: 50,
                            height: 50,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                border:
                                    Border.all(color: Colors.grey, width: 0.4),
                              ),
                              child: const Icon(
                                FontAwesomeIcons.bolt,
                                color: Colors.yellow,
                              ),
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '725 kWh',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Electricity Consumed\nApr 1 - Apr 7',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // SizedBox(
                    //     width: 85,
                    //     height: 29,
                    //     child: Container(
                    //       decoration: BoxDecoration(
                    //         color: Colors.white,
                    //         borderRadius: BorderRadius.circular(20),
                    //         border:
                    //             Border.all(color: Colors.grey, width: 0.8),
                    //       ),
                    //       child: const Center(
                    //           child: Row(
                    //         mainAxisAlignment:
                    //             MainAxisAlignment.spaceAround,
                    //         children: [
                    //           Text(
                    //             'Week',
                    //             style: TextStyle(
                    //                 color: Colors.black,
                    //                 fontSize: 14,
                    //                 fontWeight: FontWeight.w500),
                    //           ),
                    //           Icon(
                    //             Icons.keyboard_arrow_down_sharp,
                    //             color: Colors.black,
                    //           ),
                    //         ],
                    //       )),
                    //     ))

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
                        items: widget.items
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
                        value: widget.selectedValue,
                        onChanged: (value) {
                          setState(() {
                            widget.selectedValue = value!;
                          });
                          if (widget.selectedValue == 'Day') {
                            print('Day');
                          } else if (widget.selectedValue == 'Week') {
                            print('Week');
                          } else if (widget.selectedValue == 'Month') {
                            print('Month');
                          }
                        },
                        buttonStyleData: ButtonStyleData(
                          height: 30,
                          width: 100,
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
                    //create drowdown button for week and month and year
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: SizedBox(
                      height: 250,
                      width: double.infinity,
                      child: switch (widget.selectedValue) {
                        'Day' => LineChartSample2(),
                        'Week' => BarChartSample1(),
                        'Month' => MonthChart(),
                        String() => throw UnimplementedError(),
                      }),
                ),
                // vertical divider
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.grey,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 18.0),
                      child: Column(
                        children: [
                          Text(
                            '725 kWh',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Produce',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    // vertical divider
                    Container(
                      height: 50,
                      width: 1,
                      color: Colors.grey,
                    ),
                    // 2
                    const Column(
                      children: [
                        Text(
                          '725 kWh',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Exported',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    // vertical divider
                    Container(
                      height: 50,
                      width: 1,
                      color: Colors.grey,
                    ),
                    // 3

                    const Column(
                      children: [
                        Text(
                          '725 kWh',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'Used in battery',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    // vertical divider
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
