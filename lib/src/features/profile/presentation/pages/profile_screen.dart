import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/core/utils/shared/hive_helper.dart';
import 'package:final_project/src/core/widgets/toast_notification.dart';
import 'package:final_project/src/features/signin/presentation/cubit/signin_cubit.dart';
import 'package:final_project/src/features/signup/data/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:redacted/redacted.dart';
import 'package:toastification/toastification.dart';

import '../../../panels/presentation/pages/panels_screen.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final UserModel? userbox = sl<HiveHelper<UserModel>>().get('cachedUser');
  static const List<dynamic> profileItems = [
    {
      'title': 'Personal Info',
      'icon': Icons.person,
      'leading': Icons.arrow_forward_ios,
    },
    {
      'title': 'Notifications',
      'icon': Icons.notifications,
      'leading': Icons.arrow_forward_ios,
    },
    {
      'title': 'Settings',
      'icon': Icons.settings,
      'leading': Icons.arrow_forward_ios,
    },
    {
      'title': 'Customer Support',
      'icon': Icons.support_agent,
      'leading': Icons.arrow_forward_ios,
    },
    {
      'title': 'Privacy policy ',
      'icon': Icons.privacy_tip,
      'leading': Icons.arrow_forward_ios,
    },
    {
      'title': 'Logout',
      'icon': Icons.logout,
      'leading': Icons.arrow_forward_ios,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: BlocProvider.value(
        value: sl<SigninCubit>(),
        child: BlocListener<SigninCubit, SigninState>(
          listenWhen: (previous, current) =>
              current is LogoutFailed || current is LogoutSuccess,
          listener: (context, state) {
            if (state is LogoutSuccess) {
              toastNotification(
                  context,
                  state.message,
                  'LogOut',
                  Alignment.topCenter,
                  ToastificationType.success,
                  ToastificationStyle.fillColored,
                  Icon(Icons.verified),
                  Colors.green);
              GoRouter.of(context).go('/SigninScreen');
            } else if (state is LogoutFailed) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          child: CustomScrollView(
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
                      'Profile',
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18, vertical: 30.0),
                  child: Column(
                    children: [
                      Hero(
                          tag: 'profile_image',
                          child: Stack(children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: RepaintBoundary(
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
                                          animationDuration:
                                              Duration(milliseconds: 400),
                                          redactedColor: Colors.grey.shade200,
                                        ),
                                        context: context),
                                    errorWidget: (context, url, error) =>
                                        Icon(Icons.error),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                right: 0,
                                bottom: 1,
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.blue,
                                ))
                          ])),
                      Text(
                        'Tarek mohamed',
                        style: TextStyle(
                            fontSize: 16.sp, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'tarekmohamed@gmail.com',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey.shade600),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.blue.shade100),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            ...List.generate(profileItems.length, (index) {
                              return buildProfileItem(context,
                                  title: profileItems[index]['title'],
                                  icon: profileItems[index]['icon'],
                                  leading: profileItems[index]['leading'],
                                  onTap: () {
                                profileItems[index]['title'] == 'Settings'
                                    ? GoRouter.of(context)
                                        .push('/SettingsScreen')
                                    : profileItems[index]['title'] ==
                                            'Customer Support'
                                        ? showGeneralDialog(
                                            context: context,
                                            barrierDismissible: true,
                                            barrierLabel: 'Support',
                                            transitionDuration:
                                                Duration(milliseconds: 400),
                                            transitionBuilder: (context,
                                                animation,
                                                secondaryAnimation,
                                                child) {
                                              Tween<Offset> tween = Tween(
                                                begin: Offset(0, -1),
                                                end: Offset(0, 0),
                                              );
                                              Animation<Offset>
                                                  offsetAnimation =
                                                  tween.animate(
                                                CurvedAnimation(
                                                  parent: animation,
                                                  curve: Curves.easeInOut,
                                                ),
                                              );
                                              return SlideTransition(
                                                position: offsetAnimation,
                                                child: child,
                                              );
                                            },
                                            pageBuilder: (context, animation,
                                                secondaryAnimation) {
                                              return Center(
                                                child: Container(
                                                  padding: EdgeInsets.all(10),
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 50,
                                                      vertical: 300),
                                                  height: 172,
                                                  width: 390,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Scaffold(
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    body: Column(
                                                      children: [
                                                        Center(
                                                            child: Text(
                                                          'Help',
                                                          style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                        )),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        const contactItem(
                                                          title: 'Message Us',
                                                          icon: Icons.email,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Expanded(
                                                                child: Divider(
                                                              color:
                                                                  Colors.grey,
                                                              indent: 20,
                                                              endIndent: 20,
                                                            ))
                                                          ],
                                                        ),
                                                        const contactItem(
                                                          title: 'Call us',
                                                          icon: Icons.call,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            })
                                        : profileItems[index]['title'] ==
                                                'Privacy policy'
                                            ? GoRouter.of(context)
                                                .push('/PrivacyPolicyScreen')
                                            : profileItems[index]['title'] ==
                                                    'Help'
                                                ? GoRouter.of(context)
                                                    .push('/HelpScreen')
                                                : profileItems[index]
                                                            ['title'] ==
                                                        'Logout'
                                                    ? showdialog(
                                                        onConfirm: () {
                                                          sl<SigninCubit>()
                                                              .logout();
                                                        },
                                                        onCancel: () =>
                                                            Navigator.pop(
                                                                context),
                                                        context,
                                                        iconPath:
                                                            'assets/icons/info.svg',
                                                        content:
                                                            'Are you sure you want to “Log out”?',
                                                        confirmText: 'Yes',
                                                        cancelText: 'Cancel',
                                                      )
                                                    : profileItems[index]
                                                                ['title'] ==
                                                            'Notifications'
                                                        ? GoRouter.of(context)
                                                            .push('/NotificatoinScreen')
                                                        : GoRouter.of(context).push('/PersonalInfoScreen');
                              });
                            })
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class contactItem extends StatelessWidget {
  const contactItem({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildProfileItem(
  BuildContext context, {
  String? title,
  IconData? icon,
  IconData? leading,
  VoidCallback? onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 20,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xff468ED1),
                    )),
                child: Icon(
                  icon,
                  color: Color(0xff468ED1),
                ),
              ),
              Text(title!),
            ],
          ),
          Icon(leading)
        ],
      ),
    ),
  );
}
