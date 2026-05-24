import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

enum NavigatorType { push, pushReplacement, pushAndRemoveUntil }

abstract class MyNavigator {

  static goTo(Widget screen,
      {NavigatorType type = NavigatorType.push}) {

    switch (type) {
      case NavigatorType.push:
        return Get.to(screen);

      case NavigatorType.pushReplacement:
        return Get.off(screen);

      case NavigatorType.pushAndRemoveUntil:
        return Get.offAll(screen);
    }
  }

  static goBack() => Get.back();
}