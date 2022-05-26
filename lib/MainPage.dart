import 'package:flutter/material.dart';
import 'package:postest6_151_hilary/switch_controller.dart';
import 'package:get/get.dart';

class MyMain extends StatelessWidget {
  final SwitchController belii = Get.put(SwitchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Obx(
        () => Container(
          color: belii.SwitchValue.value ? Colors.pinkAccent : Colors.purpleAccent,
        ),
        ),
        title: Text("Page Order"),
        actions: [
          Obx(
            () => Switch(
              value: belii.SwitchValue.value,
              onChanged: (value){
                belii.SwitchValue(value);
              },
              thumbColor: 
              MaterialStateColor.resolveWith((states) => Colors.black),
              trackColor:
              MaterialStateColor.resolveWith((states) => Colors.white),
            ), 
          ),
        ],
      ),
      backgroundColor: Color(0xFFFFEEEE),
      body: ListView(
        children: <Widget>[
          Text("YUK DI ORDER ARMY",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, height: 5)),
          Container(
            height: 350,
            child: Image.asset('assets/decor.jpg'),
          ),
          Text(
            'Room Decor Rp 5.000.000',
            textAlign: TextAlign.center,
            style: TextStyle(
                height: 2,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.double),
          ),
          Container(
            height: 350,
            child: Image.asset('assets/hoodie.jpg'),
          ),
          Text(
            'Hoodie Rp 500.000',
            textAlign: TextAlign.center,
            style: TextStyle(
                height: 2,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.double),
          ),
          Container(
            height: 350,
            child: Image.asset('assets/BTS Merchandise.png'),
          ),
          Text(
            'Room Decor Rp 2.000.000',
            textAlign: TextAlign.center,
            style: TextStyle(
                height: 2,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.double),
          ),
          Container(
            height: 350,
            child: Image.asset('assets/kpop.jpg'),
          ),
          Text(
            'Accessories (Doll) Rp 500.000',
            textAlign: TextAlign.center,
            style: TextStyle(
                height: 2,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.double),
          ),
          Container(
            height: 350,
            child: Image.asset('assets/Dolls.jpg'),
          ),
          Text(
            'Hoodie Rp 1.000.000',
            textAlign: TextAlign.center,
            style: TextStyle(
                height: 2,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.double),
          ),
          Container(
            height: 350,
            child: Image.asset('assets/Sweater.jpg'),
          ),
        ],
      ),
    );
  }
}
