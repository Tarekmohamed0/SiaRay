import 'package:final_project/src/core/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

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
            child: SvgPicture.asset(AppStrings.appIcon)),
        const SizedBox(height: 10), // Space between the image and the text
      ],
    );
  }
}
