// ignore_for_file: body_might_complete_normally_nullable

// ignore: implementation_imports
import 'package:flutter/src/widgets/navigator.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';
import 'package:get_x/main.dart';

class AuthMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (sharedPref!.getString("role") == "user") return RouteSettings(name: "/home");
    if (sharedPref!.getString("role") == "admin") return RouteSettings(name: "/admin");
  }
}
