// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import 'package:final_project/src/core/utils/auth_services.dart';

import '../../../../core/config/config.dart';
import '../../../signup/data/models/user_model.dart';
import '../../../signup/presentation/widgets/bar_chart.dart';
import '../widgets/drobdown_menu.dart';
import '../widgets/line_chart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
    required this.user,
  }) : super(key: key);
  final user;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedValue = 'Week';
  List<String> items = <String>[
    'Day',
    'Week',
    'Month',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          // appbar content (welcom back, Tarek mohamed, user image)
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
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
                    '${widget.user.user!.name}',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.notification_important, color: Colors.red),
                  // IconButton(
                  //     onPressed: () {
                  //       GoRouter.of(context).go('/Subdevice');
                  //     },
                  //     icon: Icon(Icons.notifications_none)),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://avatars.githubusercontent.com/u/55942632?v=4'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        try {
                          sl<AuthServices>().signOut();
                          GoRouter.of(context).go('/SigninScreen');
                        } catch (e) {
                          print(e);
                        }
                      },
                      icon: Icon(
                        Icons.logout,
                        color: Colors.red,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
        child: Column(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 1),
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
                                  image: AssetImage(
                                      'assets/images/smartflowr.png')),
                            ),
                          ),
                        )
                      ],
                    ),
                    // battery icon
                    const Row(
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
                          '89%',
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
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
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
                        const Column(
                          children: [
                            Text(
                              '725 kWh',
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
                        const Column(
                          children: [
                            Text(
                              '725 kWh',
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
                        Container(
                          height: 50,
                          width: 1,
                          color: Colors.grey,
                        ),
                        const Column(
                          children: [
                            Text(
                              '725 kWh',
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
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
                                    border: Border.all(
                                        color: Colors.grey, width: 0.4),
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
                              setState(() {
                                selectedValue = value!;
                              });
                              if (selectedValue == 'Day') {
                                print('Day');
                              } else if (selectedValue == 'Week') {
                                print('Week');
                              } else if (selectedValue == 'Month') {
                                print('Month');
                              }
                            },
                            buttonStyleData: ButtonStyleData(
                              height: 30,
                              width: 100,
                              padding:
                                  const EdgeInsets.only(left: 14, right: 14),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                border:
                                    Border.all(color: Colors.black26, width: 1),
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
                                thickness: MaterialStateProperty.all(6),
                                thumbVisibility:
                                    MaterialStateProperty.all(true),
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
                      child: Container(
                        height: 250,
                        width: double.infinity,
                        child: selectedValue == 'Day'
                            ? BarChartSample1()
                            : LineChartSample2(),
                      ),
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
                              'Produce',
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
                              'Produce',
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
        ),
      ),
    );
  }
}
