import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper{
 static SharedPreferences ? sharedPrefrences;

 static initCache()async{
    sharedPrefrences=await SharedPreferences.getInstance();
  }
  static Future<bool> setData({
   required String key,
   required dynamic value,
})async{
 if(value is String ) {
   return await sharedPrefrences!.setString(key, value);
  }else if(value is bool ) {
   return await sharedPrefrences!.setBool(key, value);
 }else if(value is int ) {
   return await sharedPrefrences!.setInt(key, value);
 }
 else{
   return await sharedPrefrences!.setDouble(key, value);
 }
 }

 static  getData({
   required String key,
 }){
   return  sharedPrefrences?.get(key);
 }
}