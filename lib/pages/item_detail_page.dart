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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GetToken().getToken();
    data = GetItems().runSp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<ItemDetailModel>>(
        future:
            GetItems().runSp(), // a previously-obtained Future<String> or null
        builder: (BuildContext context,
            AsyncSnapshot<List<ItemDetailModel>> snapshot) {
          List<Widget> children;
          if (snapshot.hasData) {
            children = <Widget>[
              const Icon(
                Icons.check_circle_outline,
                color: Colors.green,
                size: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text('Result: ${snapshot.data![0].itemName}'),
              ),
            ];
          } else if (snapshot.hasError) {
            children = <Widget>[
              const Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text('Error: ${snapshot.error}'),
              ),
            ];
          } else {
            return customSpinKit();
          }
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: children,
            ),
          );
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
