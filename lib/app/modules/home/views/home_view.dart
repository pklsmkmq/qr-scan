// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 300,
                height: 300,
                margin: EdgeInsets.only(bottom: 20),
                child: QrImageView(
                  data: "ID-DATA-KALIAN-MASING-MASING",
                  version: QrVersions.auto,
                  size: 300,
                )),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: () => controller.scanQr(), child: Text("Scan QR")),
            )
          ],
        ));
  }
}
