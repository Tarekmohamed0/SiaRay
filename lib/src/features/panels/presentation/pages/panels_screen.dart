import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

class PanelsScreen extends StatefulWidget {
  const PanelsScreen({super.key});

  @override
  State<PanelsScreen> createState() => _PanelsScreenState();
}

class _PanelsScreenState extends State<PanelsScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(context),
      body: Column(
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
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Stack(
                children: [
                  Positioned(
                      bottom: 5.h,
                      right: 0.w,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            isSwitched = !isSwitched;
                          });
                        },
                        child: Container(
                          height: 40.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/power.svg',
                            color: isSwitched ? Colors.green : Colors.red,
                          ),
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
    );
  }
}

PreferredSizeWidget appBar(BuildContext context) {
  return AppBar(
      elevation: 0,
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
          SvgPicture.asset('assets/icons/menu.svg'),
        ],
      ));
}
