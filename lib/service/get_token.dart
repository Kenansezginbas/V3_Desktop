import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetToken {
  var dio = Dio();
  final tokenURL = "http://192.168.2.95:9999/integratorService/connect";

  getToken() async {
    var data = await dio.get(tokenURL);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    tokenControllerShared(data.data["Token"]);
    print("shared token : ${prefs.getString("token")}");
  }

  Future<void> tokenControllerShared(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("token", token);
  }
}
