import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class Subdevice extends StatelessWidget {
  const Subdevice({super.key});
  Future<void> getsubdevice() async {
    try {
      final response = await Dio().get(
        'https://siaray.holylands.net/api/user/panel',
        options: Options(
          headers: {
            'Authorization':
                'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3NpYXJheS5ob2x5bGFuZHMubmV0L2FwaS91c2VyL2F1dGgvbG9naW4iLCJpYXQiOjE3MzA3NDE2MTcsImV4cCI6MTc2MTg0NTYxNywibmJmIjoxNzMwNzQxNjE3LCJqdGkiOiJFckU0WGtoTlpFOWJKN1h3Iiwic3ViIjoiMSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.LNCyHlqyAgSgCjBudvUWJoxxEIB_ZwwsavinGdkLF-Y'
          },
        ),
      );
      if (response.statusCode == 200) {
        Logger().i('Subdevice data: ${response.data}');
        print("hello ");
        // final subdeviceData = response.data['subdevices'];
        // Logger().i('Subdevice data: $subdeviceData');
      } else if (response.statusCode == 500) {
        Logger().e("error");
      }
    } catch (e) {
      Logger().i('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () async {
                  await getsubdevice();
                },
                child: Text('Subdevice')),
          ),
        ],
      )),
    );
  }
}
