import 'package:flutter/material.dart';

extension StringBufferTextExtension on StringBuffer {
  /// Converts the accumulated text in the StringBuffer to a `Text` widget
  /// with a specified `TextStyle`.
  Text toText({TextStyle? style, TextAlign? textAlign}) {
    return Text(
      toString(),
      style: style,
      textAlign: textAlign,
    );
  }
}
