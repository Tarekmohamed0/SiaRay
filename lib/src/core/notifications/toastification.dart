import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

ToastificationItem toastiFication(
  BuildContext context, {
  required ToastificationType type,
  required ToastificationStyle style,
  required String title,
  required String description,
  required Alignment alignment,
}) {
  return toastification.show(
    context: context,
    type: type,
    style: style,
    title: Text(title),
    description: Text(description),
    alignment: alignment,
    autoCloseDuration: const Duration(seconds: 4),
    borderRadius: BorderRadius.circular(12.0),
    dragToClose: true,
    applyBlurEffect: true,
  );
}
