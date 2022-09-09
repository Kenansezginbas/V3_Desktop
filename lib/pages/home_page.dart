import 'package:flutter/material.dart';
import 'package:v3_desktop/widgets/custom_outlined_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              onPressed: () {},
              buttonText: "Ödeme Al",
              iconData: Icons.attach_money,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
