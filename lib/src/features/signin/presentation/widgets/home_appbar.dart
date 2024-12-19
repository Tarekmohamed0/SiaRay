import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Container(
            margin: const EdgeInsets.only(top: 50), // Space from the top
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle, // Make the container circular
              image: DecorationImage(
                image: NetworkImage(
                    'https://avatars.githubusercontent.com/u/55942632?v=4'),
              ),
            ),
          ),
        ),
        const SizedBox(height: 10), // Space between the image and the text
        const Text(
          'AlterSol',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
