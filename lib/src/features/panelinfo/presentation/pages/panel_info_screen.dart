import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geekyants_flutter_gauges/geekyants_flutter_gauges.dart'
    as geekyants;
import 'package:geekyants_flutter_gauges/geekyants_flutter_gauges.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart' hide LinearEdgeStyle;

class PanelInfoScreen extends StatelessWidget {
  const PanelInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 20,
                ),
              ),
              Column(
                children: [
                  const Text(
                    'Panels',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Spacer(),
              SvgPicture.asset('assets/icons/menu.svg')
            ],
          )),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // header section
            Container(
              height: 223,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/solar_panel.png')),
                // color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            // panel info
            Text('Performance monitoring',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600)),
            Container(
              height: 109.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.bolt,
                        color: Colors.amber,
                      ),
                      Text('725 KWh',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text('Generated electricity',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: LinearGauge(
                          enableGaugeAnimation: true,
                          fillExtend: true,
                          extendLinearGauge: 10,
                          linearGaugeBoxDecoration:
                              const LinearGaugeBoxDecoration(
                                  borderRadius: 4,
                                  thickness: 20.0,
                                  linearGaugeValueColor: Colors.yellow,
                                  edgeStyle: LinearEdgeStyle.bothCurve,
                                  backgroundColor: Color(0xff9AAAAC)),
                          start: 0,
                          end: 100,
                          gaugeOrientation: GaugeOrientation.horizontal,
                          valueBar: [
                            const ValueBar(
                              borderRadius: 4,
                              value: 80,
                              color: Colors.yellow,
                              valueBarThickness: 20,
                            ),
                            // geekyants.ValueBar(
                            //   value: 20,
                            //   color: Colors.green.shade900,
                            //   position: geekyants.ValueBarPosition.top,
                            //   valueBarThickness: 10,
                            //   borderRadius: 10,
                            //   edgeStyle: geekyants.LinearEdgeStyle.endCurve,
                            //   offset: 10,
                            // )
                          ],
                          pointers: const [
                            // Pointer(
                            //     value: 30,
                            //     height: 0,
                            //     width: 40,
                            //     showLabel: true,
                            //     labelStyle: TextStyle(
                            //         color: Colors.black, fontWeight: FontWeight.bold),
                            //     shape: PointerShape.circle,
                            //     color: Colors.red,
                            //     pointerPosition: PointerPosition.top),
                          ],
                          rulers: geekyants.RulerStyle(
                            secondaryRulersWidth: 5,
                            secondaryRulerPerInterval: 1,
                            secondaryRulersHeight: 60,
                            secondaryRulerColor: Colors.white,
                            primaryRulerColor: Colors.white,
                            showPrimaryRulers: false,
                            showSecondaryRulers: true,
                            inverseRulers: false,
                            rulerPosition: geekyants.RulerPosition.center,
                            showLabel: false,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Center(
                            child: Text(
                              '80%',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              height: 120.h,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('sh #123456',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                          Text(
                            'Mansoura',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          )
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.battery_4_bar_sharp,
                                color: Colors.green,
                              ),
                              Text('89%')
                            ],
                          ),
                          Text(
                            'Battery',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ...List.generate(3, (index) {
                        return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade200),
                          height: 50.h,
                          width: 80.h,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Today',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                ),
                                Text(
                                  '398Kwh',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        );
                      })
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                  height: 70,
                  width: 186,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: 40,
                        child: Icon(
                          Icons.alarm,
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            '2.5 hours',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            'Time Usage',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
                  height: 70,
                  width: 186,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        width: 40,
                        child: Icon(
                          Icons.battery_0_bar,
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            '75Kwh',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            'saving in battery',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}

// class gauge extends StatelessWidget {
//   const gauge({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SfRadialGauge(enableLoadingAnimation: true, axes: <RadialAxis>[
//       RadialAxis(
//           interval: 1,
//           startAngle: 0,
//           endAngle: 360,
//           showTicks: false,
//           showLabels: false,
//           axisLineStyle: AxisLineStyle(thickness: 20),
//           pointers: <GaugePointer>[
//             RangePointer(
//                 value: 50,
//                 width: 20,
//                 color: Color(0xFFFFCD60),
//                 enableAnimation: true,
//                 cornerStyle: CornerStyle.bothCurve)
//           ],
//           annotations: <GaugeAnnotation>[
//             GaugeAnnotation(
//                 verticalAlignment: GaugeAlignment.center,
//                 widget: Column(
//                   children: <Widget>[
//                     Center(
//                       child: Padding(
//                         padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
//                         child: Container(
//                           child: Text('73°F',
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold, fontSize: 25)),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//                 angle: 270,
//                 positionFactor: 0.1)
//           ])
//     ]);
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:geekyants_flutter_gauges/geekyants_flutter_gauges.dart';

// class MyVaccinationGraph extends StatelessWidget {
//   const MyVaccinationGraph({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SizedBox(
//               width: MediaQuery.of(context).size.width,
//               child: const HeaderText()),
//           const VaccinationLinearGauge(),
//         ],
//       ),
//     );
//   }
// }

// class VaccinationLinearGauge extends StatelessWidget {
//   const VaccinationLinearGauge({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 30),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
         
//           const SizedBox(height: 8),
//           LinearGauge(
//             extendLinearGauge: 0,
//             start: 0,
//             end: 100,
//             linearGaugeBoxDecoration: const LinearGaugeBoxDecoration(
//               thickness: 1,
//             ),
//             rulers: RulerStyle(
//               rulerPosition: RulerPosition.bottom,
//               showSecondaryRulers: false,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class HeaderText extends StatelessWidget {
//   const HeaderText({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(horizontal: 20),
//       child: Column(
//         children: [
//           const Text("% of population partially and fully vaccinated"),
//           const SizedBox(height: 20),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               const LabelText(
//                 label: "Fully vaccinated",
//                 color: Colors.green,
//               ),
//               LabelText(
//                 label: "Partially vaccinated",
//                 color: Colors.green.shade900,
//               ),
//               const LabelText(label: "Not Vaccinated", color: Color(0xff9AAAAC))
//             ],
//           ),
//           const SizedBox(height: 40),
//         ],
//       ),
//     );
//   }
// }

// class LabelText extends StatelessWidget {
//   final String label;
//   final Color color;
//   const LabelText({
//     required this.label,
//     required this.color,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Icon(Icons.circle, color: color, size: 20),
//         Text(label),
//       ],
//     );
//   }
// }
