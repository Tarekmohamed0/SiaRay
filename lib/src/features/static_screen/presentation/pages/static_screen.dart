import 'package:easy_localization/easy_localization.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class StaticScreen extends StatelessWidget {
  const StaticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: appBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                // EnergyChart(
                //   energyData: [50, 20, 30, 10, 30, 60, 7, 80, 90, 1],
                //   months: [
                //     'Jan',
                //     'Feb',
                //     'Mar',
                //     'Apr',
                //     'May',
                //     'Jun',
                //     'Jul',
                //     'Aug',
                //     'Sep',
                //     'Oct',
                //   ],
                // ),
                EnergyProductionChart(),
                SizedBox(height: 20),
                Text(
                  'hightlight'.tr(),
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10.h),
                HighlightWidget(),
                // ElevatedButton(
                //     onPressed: () {
                //       context.setLocale(Locale('ar'));
                //     },
                //     child: Text('Change Language')),
                // ElevatedButton(
                //     onPressed: () {
                //       context.setLocale(Locale('en'));
                //     },
                //     child: Text('Change Language')),
                SizedBox(height: 20),
                Text(
                  'devices'.tr(),
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10.h),
                SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.5,
                    child: listOfDevices(context)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

PreferredSizeWidget appBar(BuildContext context) {
  return AppBar(
      surfaceTintColor: Colors.white,
      title: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              spacing: 20,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5,
                  children: [
                    Text(
                      'statistics'.tr(),
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Text(
                      'Solar panel statistics'.tr(),
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
            SvgPicture.asset('assets/icons/menu.svg')
          ],
        ),
      ));
}

class EnergyChart extends StatelessWidget {
  final List<double> energyData; // بيانات الطاقة الديناميكية
  final List<String> months; // أسماء الشهور

  const EnergyChart(
      {super.key, required this.energyData, required this.months});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black.withOpacity(0.1),
          //     blurRadius: 10,
          //     offset: Offset(0, 3),
          //   ),
          // ],
        ),
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'totalenergyproduction'.tr(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                DropdownButton<String>(
                  focusColor: Colors.transparent, // إزالة اللون عند التركيز
                  dropdownColor: Colors.white, // لون خلفية القائمة
                  borderRadius: BorderRadius.circular(14), // جعل الحواف مستديرة
                  value: 'Month',
                  items: ['Month', 'Week', 'Year']
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(
                              e,
                              style: TextStyle(
                                color: Colors.black, // لون النص
                              ),
                            ),
                          ))
                      .toList(),
                  onChanged: (value) {
                    // معالجة تغيير الفترات الزمنية
                  },
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.bolt, color: Colors.yellow),
                Text(
                  '2000 KWh',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 16),
            AspectRatio(
              aspectRatio: 1.6,
              child: LineChart(
                LineChartData(
                  borderData: FlBorderData(show: false),
                  gridData: FlGridData(show: false),
                  titlesData: FlTitlesData(
                    rightTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            '\$${value.toInt()}K',
                            style: TextStyle(fontSize: 8.sp),
                          );
                        },
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        reservedSize: 30,
                        maxIncluded: false,
                        interval: 1,
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            textAlign: TextAlign.end,
                            months[value.toInt()],
                            style: TextStyle(fontSize: 12.sp),
                          );
                        },
                      ),
                    ),
                  ),
                  lineBarsData: [
                    LineChartBarData(
                      spots: List.generate(
                          energyData.length,
                          (index) =>
                              FlSpot(index.toDouble(), energyData[index])),
                      isCurved: false,
                      color: Colors.red,
                      barWidth: 2,
                      dotData: FlDotData(show: false),
                      belowBarData: BarAreaData(
                        show: true,
                        color: Colors.red.withOpacity(0.3),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HighlightWidget extends StatelessWidget {
  const HighlightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black.withOpacity(0.1),
          //     blurRadius: 10,
          //     offset: Offset(0, 3),
          //   ),
          // ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Onaverageyourenergyproductionlastweekwasmorethantheweekbefore"
                  .tr(),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 16),
            // الشريط الأول
            Row(
              children: [
                Text(
                  "309 KWh",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 16),
                Expanded(
                    child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        value: 0.8, // النسبة مكتملة 100%
                        backgroundColor: Colors.grey[300],
                        color: Colors.blue,
                        minHeight: 32,
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 5,
                      child: Text(
                        "30–6 April",
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )),
              ],
            ),
            SizedBox(height: 16),
            // الشريط الثاني
            Row(
              children: [
                Text(
                  "309 KWh",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 16),
                Expanded(
                    child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        value: 0.4, // النسبة مكتملة 100%
                        backgroundColor: Colors.grey[300],
                        color: Colors.blue,
                        minHeight: 32,
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 5,
                      child: Text(
                        "30–6 April",
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget deviceItem(BuildContext context) {
  return Container(
    height: MediaQuery.sizeOf(context).height * 0.07,
    width: MediaQuery.sizeOf(context).width,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(14),
      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.black.withOpacity(0.1),
      //     blurRadius: 10,
      //     offset: Offset(0, 3),
      //   ),
      // ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        spacing: 10,
        children: [
          SvgPicture.asset('assets/icons/smart_lamp.svg'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Smart Lamp',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: ' 7 ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'devices'.tr(),
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Icon(Icons.bolt, color: Colors.yellow),
              Text(
                '102 KWh',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget listOfDevices(BuildContext context) {
  return ListView.builder(
    itemCount: 5,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: deviceItem(context),
      );
    },
  );
}

class EnergyProductionChart extends StatelessWidget {
  const EnergyProductionChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.grey.withOpacity(0.2),
        //     spreadRadius: 2,
        //     blurRadius: 5,
        //   ),
        // ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // العنوان والرأسية
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Energy Production",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.flash_on, color: Colors.yellow, size: 18),
                      SizedBox(width: 4),
                      Text(
                        "2000 KWh",
                        style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ],
              ),
              DropdownButton<String>(
                dropdownColor: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                value: 'Weekly',
                items: ['Weekly', 'Monthly']
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ))
                    .toList(),
                onChanged: (value) {
                  // معالجة تغيير الفترة
                },
              ),
            ],
          ),
          SizedBox(height: 16),
          // الرسم البياني
          AspectRatio(
            aspectRatio: 1.5,
            child: BarChart(
              BarChartData(
                maxY: 10,
                barGroups: _getBarGroups(),
                borderData: FlBorderData(show: false),
                titlesData: FlTitlesData(
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        return Text(
                          value.toString(),
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        );
                      },
                      interval: 2,
                      reservedSize: 28,
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        switch (value.toInt()) {
                          case 0:
                            return Text('Mon',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12));
                          case 1:
                            return Text('Tue',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12));
                          case 2:
                            return Text('Wed',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12));
                          case 3:
                            return Text('Thu',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12));
                          case 4:
                            return Text('Fri',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12));
                          case 5:
                            return Text('Sat',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12));
                          case 6:
                            return Text('Sun',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 12));
                          default:
                            return Text('');
                        }
                      },
                      reservedSize: 28,
                    ),
                  ),
                ),
                gridData: FlGridData(show: false, horizontalInterval: 2),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<BarChartGroupData> _getBarGroups() {
    return [
      _makeGroupData(0, 4, 6),
      _makeGroupData(1, 8, 10),
      _makeGroupData(2, 6, 8),
      _makeGroupData(3, 4, 6),
      _makeGroupData(4, 2, 4),
      _makeGroupData(5, 8, 10),
      _makeGroupData(6, 5, 2),
    ];
  }

  BarChartGroupData _makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          fromY: 0,
          toY: y1,
          color: Colors.blue,
          width: 30,
          borderRadius: BorderRadius.circular(20),
        ),
      ],
    );
  }
}
