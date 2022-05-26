import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controlerDepan = TextEditingController();
  TextEditingController controlerBelakang = TextEditingController();
  String namaAnda = "", nomorAnda = "";

  List<String> order = ["accessories", "hoodie", "room decor"];
  String OrderanAnda = "";

  @override
  void dispose() {
    controlerDepan.dispose();
    controlerBelakang.dispose();
    super.dispose();
  }

  void hapusValuie() {
    controlerDepan.text = "";
    controlerBelakang.text = "";
  }

  Widget build(BuildContext context) {
    var snackBar = const SnackBar(
      content: Text(
        "Orderan telah di Submit",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      duration: Duration(seconds: 5),
      backgroundColor: Color.fromARGB(255, 132, 32, 112),
      padding: EdgeInsets.all(15),
    );
    return Scaffold(
      backgroundColor: Color(0xFFB667F1),
      appBar: AppBar(
        title: Text("BTS Merch App"),
        backgroundColor: Color(0xFFFA4EAB),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Text(
                'BTS Merchandise',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 231, 223, 229),
                  height: 2,
                ),
              ),
              SizedBox(height: 50),
              TextFormField(
                controller: controlerBelakang,
                decoration: InputDecoration(
                  labelText: "Input Nama",
                  border: OutlineInputBorder(),
                ),
              ),
              Container(
                child: TextField(
                  controller: controlerDepan,
                  decoration: InputDecoration(
                    hintText: "Input No. WhatsApp",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Text("Silahkan di Order :"),
                height: 30,
              ),
              Text(
                "(Note : Kami akan menghubungi Anda, Thanks)",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              for (var item in order)
                Row(
                  children: [
                    Radio(
                        value: item,
                        groupValue: OrderanAnda,
                        onChanged: (newValue) {
                          setState(() {
                            OrderanAnda = newValue.toString();
                          });
                        }),
                    Text(item),
                  ],
                ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);

                  setState(() {
                    namaAnda = controlerDepan.text;
                    nomorAnda = controlerBelakang.text;
                    hapusValuie();
                  });
                },
                child: Text("Submit"),
              ),
              SizedBox(
                height: 30,
              ),
              Text("Nama Anda    : $namaAnda"),
              Text("No. WhatsApp : $nomorAnda"),
              Text("Orderan Anda  : $OrderanAnda"),
            ],
          )
        ],
      ),
    );
  }
}
