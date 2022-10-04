import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:v3_desktop/models/item_detail_model.dart';
import 'package:v3_desktop/service/get_items.dart';
import 'package:v3_desktop/service/get_token.dart';
import 'package:v3_desktop/utils/service_urls.dart';

class ItemDetailPage extends StatefulWidget {
  const ItemDetailPage({super.key});

  @override
  State<ItemDetailPage> createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  var spUrl = ServiceUrls().spUrl;
  var token;
  var data;
  List<ItemDetailModel> _itemList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GetToken().getToken();
    // data = GetItems().runSp();
    GetItems()
        .getItem()
        .then((value) => {_itemList.add(value!), print(value.toString())});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Text("data");
        },
      ),
    );
  }

  SpinKitCircle customSpinKit() {
    return SpinKitCircle(
      color: Colors.red,
    );
  }
}
