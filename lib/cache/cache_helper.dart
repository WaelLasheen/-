import 'package:shared_preferences/shared_preferences.dart';

class CacheData{

  static late SharedPreferences sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> setData({ required String key ,required bool value})async{
    sharedPreferences.setBool(key, value);
    return true;
  }

  static bool? getData({required String key}){
    return sharedPreferences.getBool(key);
  }

}