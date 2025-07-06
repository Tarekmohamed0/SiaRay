import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import 'package:svg_flutter/svg.dart';

class batteryView extends StatelessWidget {
  const batteryView({
    super.key,
    required this.value,
  });

  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Center(
              child: AnimatedRadialGauge(
                builder: (context, child, value) => Container(
                  child: Column(
                    children: [
                      Container(
                        child: SvgPicture.asset('assets/icons/battery.svg'),
                      ),
                      RadialGaugeLabel(
                        value: value,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),

                /// The animation duration.
                duration: const Duration(seconds: 1),
                curve: Curves.elasticOut,

                /// Define the radius.
                /// If you omit this value, the parent size will be used, if possible.
                radius: 100,

                /// Gauge value.
                value: value,

                /// Optionally, you can configure your gauge, providing additional
                /// styles and transformers.
                axis: GaugeAxis(
                  /// Provide the [min] and [max] value for the [value] argument.
                  min: 0,
                  max: 100,

                  /// Render the gauge as a 180-degree arc.
                  degrees: 180,

                  /// Set the background color and axis thickness.
                  style: const GaugeAxisStyle(
                    cornerRadius: Radius.circular(50),
                    thickness: 15,
                    background: Colors.white,
                    segmentSpacing: 13,
                  ),

                  /// Define the pointer that will indicate the progress (optional).
                  pointer: GaugePointer.circle(
                    radius: 15,
                    color: Colors.green,
                  ),

                  /// Define the progress bar (optional).
                  progressBar: const GaugeProgressBar.rounded(
                      color: Colors.green,
                      placement: GaugeProgressPlacement.inside),

                  /// Define axis segments (optional).
                  segments: [
                    const GaugeSegment(
                      from: 0,
                      to: 100,
                      color: Color(0xFFD9DEEB),
                      cornerRadius: Radius.circular(40),
                    ),
                    // const GaugeSegment(
                    //   from: 33.3,
                    //   to: 66.6,
                    //   color: Color(0xFFD9DEEB),
                    //   cornerRadius: Radius.zero,
                    // ),
                    // const GaugeSegment(
                    //   from: 66.6,
                    //   to: 100,
                    //   color: Color(0xFFD9DEEB),
                    //   cornerRadius: Radius.zero,
                    // ),

                    /// You can also, define the child builder.
                    /// You will build a value label in the following way, but you can use the widget of your choice.
                    ///
                    /// For non-value related widgets, take a look at the [child] parameter.
                    /// ```
                    ///

                    /// ```
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 83.h,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                spacing: 20,
                children: [
                  SvgPicture.asset('assets/icons/battery.svg'),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Stored Energy',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '350 KWh',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Hightlight',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 70.h,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12),
                  child: Text(
                    '"Peak solar energy production was at 1 PM with\n350 kWh."',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
