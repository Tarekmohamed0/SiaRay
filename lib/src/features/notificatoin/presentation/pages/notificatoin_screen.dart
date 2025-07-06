import 'package:final_project/src/core/config/config.dart';
import 'package:final_project/src/features/notificatoin/presentation/bloc/notificatoin_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redacted/redacted.dart';

class NotificatoinScreen extends StatelessWidget {
  const NotificatoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    sl<NotificatoinBloc>().add(GetNotifications());
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: BlocProvider.value(
        value: sl<NotificatoinBloc>(),
        child: BlocConsumer<NotificatoinBloc, NotificatoinState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is Loading) {
              return CustomScrollView(
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
                          'Notificatoin',
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
                          horizontal: 18.0, vertical: 30),
                      child: Column(
                        children: [
                          ...List.generate(
                              12,
                              (index) => buildNotificationItem(
                                          'we internet', 'we internet')
                                      .redacted(
                                    context: context,
                                    redact: true,
                                  )),
                        ],
                      ),
                    ),
                  )
                ],
              );
            } else if (state is Error) {
              return Center(
                child: Text(
                  state.message,
                  style: TextStyle(color: Colors.red),
                ),
              );
            } else if (state is Loaded) {
              return CustomScrollView(
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
                          'Notificatoin',
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
                          horizontal: 18.0, vertical: 30),
                      child: Column(
                        children: [
                          ListView.builder(
                            itemBuilder: (context, index) {
                              final notification = state.notifications[index];
                              return buildNotificationItem(
                                  notification.alertType, notification.message);
                            },
                            itemCount: state.notifications.length,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                          ),
                          // ...List.generate(
                          //     state.notifications.length,
                          //     (index) => buildNotificationItem()),
                        ],
                      ),
                    ),
                  )
                ],
              );
            }
            return Center(
              child: Text(
                'Unexpected state',
                style: TextStyle(color: Colors.grey),
              ),
            );
          },
        ),
      ),
    );
  }

  Container buildNotificationItem(String title, String subtitle) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xffe5efff),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 20,
            children: [
              Icon(
                Icons.notifications,
                color: Color(0xff468ED1),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: Color(0xff468ED1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(subtitle,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400)),
                ],
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios, color: Color(0xff468ED1)),
        ],
      ),
    );
  }
}
