import 'package:final_project/src/features/signup/presentation/pages/signUp_screen.dart';
import 'package:final_project/src/features/splash/presentation/pages/onboarding1_screen.dart';
import 'package:final_project/src/features/splash/presentation/pages/splash_screen_2.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController pageController = PageController();
  int currntpage = 0;
  List<Widget> pages = [
    const Onboarding1Screen(),
    const onBoardingScreen2(),
    const onBoardingScreen3(),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        currntpage = pageController.page!.round();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
                height: MediaQuery.sizeOf(context).height,
                child: Stack(
                  children: [
                    PageView.builder(
                      itemCount: pages.length,
                      itemBuilder: (context, index) {
                        return pages[index];
                      },
                      controller: pageController,
                    ),
                    Positioned(
                      bottom: 50,
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color(0xD9D9D9).withOpacity(0.8)),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'Skip',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  )),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(pages.length, (index) {
                                  bool isActive = currntpage == index;
                                  return GestureDetector(
                                    onTap: () {
                                      pageController.animateToPage(index,
                                          duration: const Duration(
                                              milliseconds: 1000),
                                          curve: Curves.easeOutSine);
                                    },
                                    child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 600),
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      width: isActive ? 9 : 12,
                                      height: isActive ? 17 : 12,
                                      decoration: BoxDecoration(
                                        color: isActive
                                            ? Colors.blue
                                            : Colors.grey,
                                        borderRadius: isActive
                                            ? const BorderRadius.only(
                                                topLeft: Radius.circular(1),
                                                bottomLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                                bottomRight:
                                                    Radius.circular(10),
                                              )
                                            : BorderRadius.circular(10),
                                      ),
                                    ),
                                  );
                                }),
                              ),
                              GestureDetector(
                                onTap: () {
                                  if (currntpage < pages.length - 1) {
                                    pageController.animateToPage(currntpage + 1,
                                        duration:
                                            const Duration(milliseconds: 1000),
                                        curve: Curves.easeOutSine);
                                  } else {
                                    GoRouter.of(context).go('/SignupScreen');
                                  }
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color(0xD9D9D9)
                                          .withOpacity(0.8)),
                                  child: const Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.black),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          ],
        ));
  }
}

class onBoardingScreen2 extends StatelessWidget {
  const onBoardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/55942632?v=4'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'AlterSol',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 70,
                ),
                Text('Handel the\nenergy you\nproduce',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30)),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Lower your electricity bills while making a positive impact. Track savings and optimize energy use effortlessly.',
                  style:
                      TextStyle(overflow: TextOverflow.ellipsis, fontSize: 14),
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
        child: Padding(
            padding: const EdgeInsets.only(left: 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    // const CircleAvatar(
                    //   radius: 20,
                    //   backgroundImage: NetworkImage(
                    //       'https://avatars.githubusercontent.com/u/55942632?v=4'),
                    // ),
                    // SizedBox(
                    //   width: 10,
                    // ),
                    // Text(
                    //   'AlterSol',
                    //   style: TextStyle(
                    //       color: Colors.black,
                    //       fontWeight: FontWeight.w500,
                    //       fontSize: 20),
                    // ),
                  ],
                ),
                Image.asset(
                  'assets/images/flower3.png',
                  height: 500,
                ),
                const SizedBox(
                  height: 70,
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
                        'Lower your electricity bills while making a positive impact. Track savings and optimize energy use effortlessly.',
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis, fontSize: 14),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
