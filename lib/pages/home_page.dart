import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:v3_desktop/service/get_items.dart';
import 'package:v3_desktop/service/get_token.dart';
import 'package:v3_desktop/utils/service_urls.dart';
import 'package:v3_desktop/widgets/custom_outlined_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var spUrl = ServiceUrls().spUrl;
  var token;
  var data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GetToken().getToken();
    //data = GetItems().runSp();
  }

  Future<void> tokenControllerShared() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    token = (await prefs.getString("token"))!;
    spUrl = spUrl + token + "?";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomOutlinedButton(
              onPressed: () {},
              buttonText: "Müşteri Aç",
              iconData: Icons.person_add,
              color: Colors.blue,
            ),
            CustomOutlinedButton(
              onPressed: () {},
              buttonText: "Sipariş Oluştur",
              iconData: Icons.abc_sharp,
              color: Colors.orange,
            ),
            CustomOutlinedButton(
              onPressed: GetItems().getItem,
              buttonText: "Ödeme Al",
              iconData: Icons.attach_money,
              color: Colors.green,
            ),
            CustomOutlinedButton(
              onPressed: GetItems().getItem,
              buttonText: "Ürün Durum Raporu",
              iconData: Icons.inventory,
              color: Colors.pink,
            ),
            CustomOutlinedButton(
              onPressed: () => Get.toNamed("/itemDetailPage"),
              buttonText: "Ürün Durum Raporu",
              iconData: Icons.inventory,
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
