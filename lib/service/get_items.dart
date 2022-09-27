import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:v3_desktop/models/item_detail_model.dart';
import 'package:v3_desktop/models/proc_model.dart';
import 'package:v3_desktop/service/get_token.dart';
import 'package:v3_desktop/utils/service_urls.dart';

class GetItems {
  var dio = Dio();
  var url = ServiceUrls().spUrl;
  var spData = ProcModel(procName: "usp_GetProductPriceAndInventory");
  Future<List<ItemDetailModel>> runSp() async {
    var result, data;
    GetToken().getToken();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = (await prefs.getString("token"))!;
    url = url + token + "?";
    // print(url);
    try {
      result = await dio.post(url, data: spData);
      print("sfsf");
      print(result.statusCode);
      print(result.data[0]["ItemName"]);
      // print(result.statusCode);
      //print(result.data);
      data = await ItemDetailModel.fromJson(result.data);
      // print("Status Code" + result);
      // print(data[0].itemName);
    } catch (e) {
      // print(e.toString());
    }
    return result.map(((e) => ItemDetailModel.fromJson(e))).toList();
  }
}
