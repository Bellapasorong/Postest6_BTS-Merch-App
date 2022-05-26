import 'package:flutter/material.dart';
import 'package:postest6_151_hilary/MainPage.dart';
import 'package:postest6_151_hilary/Form.dart';


class MyLanding extends StatelessWidget {
  const MyLanding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("BTS Merch App"),
      ),
      backgroundColor: Color(0xFFA63EC5),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: 400,
                height: 300,
                margin: EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/members.jpg"),
                      fit: BoxFit.cover),
                ),
                child: Scaffold(
                  backgroundColor: Colors.transparent,
                ),
              ),
              Text(
                "BTS Merchandise",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFE9D5DA),
                  height: 2,
                ),
              ),
              Text(
                "About BTS!!",
                style: TextStyle(
                    height: 5,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.double),
              ),
              Text(
                "Halo guys mungkin ada dari kalian yang ga tau BTS nih, so kalian harus baca ini yak >.< ",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              Text(
                "BTS (Korean: 방탄소년단; RR: Bangtan Sonyeondan), also known as the Bangtan Boys, is a South Korean boy band that was formed in 2010 and debuted in 2013 under Big Hit Entertainment. The septet—consisting of members Jin, Suga, J-Hope, RM, Jimin, V, and Jungkook—co-writes and co-produces.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 2.0,
                  // letterSpacing: 1,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizeContainer(
                    isActive: true,
                    size: "Accessories",
                  ),
                  SizeContainer(isActive: true, size: "Hoodie"),
                  SizeContainer(isActive: true, size: "Room decor"),
                ],
              ),
              ElevatedButton(
                child: Text("Halaman Selanjutnya"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return MyMain();
                  }));
                },
              )
            ],
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFFFFE59D),
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("Menu"),
              decoration: BoxDecoration(color: Color(0xFFBDE6F1)),
            ),
            ListTile(
              title: Text("Order"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return MyHomePage();
                })
                
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class SizeContainer extends StatelessWidget {
  const SizeContainer({Key? key, this.isActive = false, required this.size})
      : super(key: key);

  final bool isActive;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 300,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/icon2.png"),
        ),
      ),
      child: Text(
        size,
        style: TextStyle(
          fontSize: 10,
          height: 20,
          fontWeight: FontWeight.bold,
          color: isActive ? Color(0xFF15133C) : Color(0xFFFFBDE6),
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 50,
      margin: EdgeInsets.only(top: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 216, 94, 170),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(offset: Offset(0, 4), blurRadius: 5),
          ]),
    );
  }
}
