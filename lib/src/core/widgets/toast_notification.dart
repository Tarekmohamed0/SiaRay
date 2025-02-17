import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

ToastificationItem toastNotification(
  BuildContext context,
  String message,
  String Title,
  Alignment alignment,
  ToastificationType type,
  ToastificationStyle style,
  Icon icon,
  Color color,
) {
  final String title = Title;

  return toastification.show(
    context: context,
    type: type,
    style: style,
    title: Text(title),
    description: Text(message),
    alignment: alignment,
    autoCloseDuration: const Duration(seconds: 4),
    animationBuilder: (
      context,
      animation,
      alignment,
      child,
    ) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
    foregroundColor: color,
    icon: icon,
    borderRadius: BorderRadius.circular(12.0),
    boxShadow: highModeShadow,
    dragToClose: true,
    applyBlurEffect: true,
  );
}
