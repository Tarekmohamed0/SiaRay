import 'package:final_project/src/core/constants/Strings.dart';
import 'package:final_project/src/features/signup/presentation/pages/signUp_screen.dart';
import 'package:final_project/src/features/splash/presentation/pages/onboarding1_screen.dart';
import 'package:final_project/src/features/splash/presentation/pages/splash_screen_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController pageController = PageController();
  final ValueNotifier<int> currntpage = ValueNotifier<int>(0);
  List<Widget> pages = [
    const Onboarding1Screen(),
    const onBoardingScreen2(),
    const onBoardingScreen3(),
  ];
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      currntpage.value = pageController.page!.round();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                PageView.builder(
                  itemCount: pages.length,
                  controller: pageController,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => pages[index],
                ),
                Positioned(
                  bottom: 50,
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  Colors.grey.withOpacity(0.8)),
                              shape: WidgetStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Skip',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),
                          ValueListenableBuilder<int>(
                            valueListenable: currntpage,
                            builder: (context, pageIndex, _) {
                              return Row(
                                children: List.generate(
                                  pages.length,
                                  (index) => AnimatedContainer(
                                    duration: const Duration(milliseconds: 600),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 4),
                                    width: pageIndex == index ? 9 : 12,
                                    height: pageIndex == index ? 17 : 12,
                                    decoration: BoxDecoration(
                                      color: pageIndex == index
                                          ? Colors.blue
                                          : Colors.grey,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          GestureDetector(
                            onTap: () {
                              if (currntpage.value < pages.length - 1) {
                                pageController.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeOutSine,
                                );
                              } else {
                                context.pushReplacement('/SigninScreen');
                              }
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.withOpacity(0.8),
                              ),
                              child: const Icon(Icons.arrow_forward_ios_rounded,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class onBoardingScreen2 extends StatelessWidget {
  const onBoardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(AppStrings.appIcon),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text('Save More with\nSmart Energy',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30)),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Lower your electricity bills while making a positive\n impact.\nTrack savings and optimize energy use effortlessly.',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50.0),
                  child: Image(
                      image: AssetImage('assets/images/flower2.png'),
                      height: 500),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            )),
      ),
    );
  }
}

class onBoardingScreen3 extends StatelessWidget {
  const onBoardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [],
            ),
            Container(
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/flower3.png',
                    height: 500,
                  ),
                  Positioned(
                    top: 50,
                    left: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(AppStrings.appIcon),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('save More with\nsmart Energy',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 30)),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Lower your electricity bills while making a positive \nimpact.\nTrack savings and optimize energy use effortlessly.',
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis, fontSize: 14),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
