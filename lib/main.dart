import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranGenisligi = ekranBilgisi.size.width;
    final double ekranYuksekligi = ekranBilgisi.size.height;
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: ekranYuksekligi / 20),
                child: SizedBox(
                    width: ekranGenisligi / 4,
                    child: Image.asset("images/logo.png")),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: ekranGenisligi / 20,
                    top: ekranYuksekligi / 40,
                    right: ekranGenisligi / 20,
                    bottom: ekranYuksekligi / 40),
                child: SizedBox(
                  width: ekranGenisligi / 1,
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Kullanici Adi",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: ekranGenisligi / 20,
                    top: ekranYuksekligi / 40,
                    right: ekranGenisligi / 20,
                    bottom: ekranYuksekligi / 40),
                child: SizedBox(
                  width: ekranGenisligi / 1,
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Sifre",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: ekranGenisligi / 1.9,
                child: ElevatedButton(
                  onPressed: () {
                    print("Giris Yapildi");
                  },
                  child: Text(
                    "Giris Yap",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: ekranGenisligi / 25,
                        color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: GestureDetector(
                  onTap: () {
                    print("Yardim Secildi");
                  },
                  child: Text(
                    "Yardim",
                    style: TextStyle(
                        fontSize: ekranGenisligi / 30,
                        color: Colors.greenAccent,
                        decoration: TextDecoration.underline,
                        letterSpacing: 2),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
