import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:v3_desktop/models/item_detail.dart';
import 'package:v3_desktop/models/proc_model.dart';
import 'package:v3_desktop/service/get_token.dart';
import 'package:v3_desktop/utils/service_urls.dart';

class GetItems {
  var dio = Dio();
  var url = ServiceUrls().spUrl;
  var spData = ProcModel(procName: "usp_GetProductPriceAndInventory");

  Future<ItemDetail> runSp() async {
    var result;
    GetToken().getToken();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = (await prefs.getString("token"))!;
    url = url + token + "?";
    print(url);
    try {
      result = await dio.post(url, data: spData);
      print(result);
    } catch (e) {
      print(e.toString());
    }
    return result.data;
  }
}
