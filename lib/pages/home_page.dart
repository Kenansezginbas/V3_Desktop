import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:v3_desktop/data/const_data.dart';
import 'package:v3_desktop/models/retail_customer_model.dart';
import 'package:v3_desktop/service/get_token.dart';

import '../utils/custom_input_decoration.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var postURL = "http://192.168.2.95:9999/IntegratorService/post/";
  var dio = Dio();
  var constData = ConstData();
  var firstName, lastName;
  var token;
  final formKey = GlobalKey<FormState>();
  late RetailCustomerModel data;
  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    GetToken().getToken();
    tokenControllerShared();
  }

  Future<void> tokenControllerShared() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    token = (await prefs.getString("token"))!;
    postURL = postURL + token + "?";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading == false ? customBody(context) : customSpinKit(),
    );
  }
  SpinKitCircle customSpinKit() {
    return SpinKitCircle(
      color: Colors.red,
    );
  }

  Center customBody(BuildContext context) {
    return Center(
      child: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width * .50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                firstNameTextFormField(),
                SizedBox(height: 10),
                lastNameTextFormField(),
                SizedBox(height: 10),
                saveButton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField firstNameTextFormField() {
    return TextFormField(
      validator: (val) {
        if (val!.isEmpty) {
          return "Lütfen Alanları Doldurunuz";
        } else {
          return null;
        }
      },
      onSaved: (val) {
        firstName = val!.trim();
      },
      decoration:
          CustomInputDecoration.customInputDecorationDialog("Müşteri Adı"),
      cursorColor: Colors.black,
    );
  }

  TextFormField lastNameTextFormField() {
    return TextFormField(
      validator: (val) {
        if (val!.isEmpty) {
          return "Lütfen Alanları Doldurunuz";
        } else {
          return null;
        }
      },
      onSaved: (val) {
        lastName = val!.trim();
      },
      decoration:
          CustomInputDecoration.customInputDecorationDialog("Müşteri Soyadı"),
      cursorColor: Colors.black,
    );
  }

  OutlinedButton saveButton() {
    return OutlinedButton(
      onPressed: () async {
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          changeLoadingStatus();
          data = RetailCustomerModel(
            modelType: constData.modelType,
            firstName: firstName,
            lastName: lastName,
            officeCode: constData.officeCode,
            retailSalePriceGroupCode: constData.retailSalePriceGroupCode,
            identityNum: constData.identityNum,
            creditLimit: constData.creditLimit,
            currencyCode: constData.currencyCode,
            postalAddresses: [
              constData.constAdress,
            ],
          );

          try {
            var result = await dio.post(postURL, data: jsonEncode(data));
            print(result.statusCode);
            print(result.data);
            changeLoadingStatus();
            customSnackBar("Kayıt Başarılı");
            formKey.currentState!.reset();

            // print(jsonEncode(data));
          } catch (e) {
            print(e.toString());
            customSnackBar("Hata Alındı");
          }
        }
      },
      child: Text(
        "Kaydet",
      ),
    );
  }

  void customSnackBar(content) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(content),
      ),
    );
  }

  void changeLoadingStatus() {
    return setState(() {
      isLoading = !isLoading;
    });
  }
}
