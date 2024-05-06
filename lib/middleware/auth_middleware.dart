// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/src/widgets/navigator.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';
import 'package:get_x/main.dart';

class AuthMiddleWare extends GetMiddleware {

  @override
  RouteSettings? redirect(String? route) {
    if(sharedPref!.getString('id')!=null)
    return RouteSettings(name: '/home');
  }
}