import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SettingServices extends GetxService {
  late SharedPreferences sharedPref;
  
  RxInt counter = 0.obs;

  Future<SettingServices> init() async {
    // start service
    sharedPref = await SharedPreferences.getInstance();
    counter.value = sharedPref.getInt("Counter") ?? 0 ;
    // end
    return this;
  }

  increase(){
    counter++;
    sharedPref.setInt('Counter', counter.value);

  }

}