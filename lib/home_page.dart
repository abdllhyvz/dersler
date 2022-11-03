import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int a = 3;
  String text = "bu bir string";
  TextEditingController? textEditingController;
  TextEditingController? passwordController;
  bool isObscure = true;
  int? i;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              //            mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Kullanıcı Adı:",
                  style: TextStyle(fontSize: _height * .03),
                ),
                SizedBox(
                  width: _width * 0.05,
                ),
                Container(
                  width: _width * .6,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25)))),
                    controller: textEditingController,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: _height * .1,
            ),
            Row(
              children: [
                Text(
                  "Şifre Girin:",
                  style: TextStyle(fontSize: _height * .03),
                ),
                SizedBox(
                  width: _width * 0.05,
                ),
                Container(
                  width: _width * .6,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25)))),
                    controller: passwordController,
                    obscureText: isObscure,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: _height * .15,
            ),
            Container(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                child: Text(
                  "Giriş Yap",
                  style: TextStyle(fontSize: 17),
                ),
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
              ),
              height: _height * .08,
              width: _width * .3,
            ),
          ],
        ),
      ),
    );
  }
}
