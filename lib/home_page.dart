import 'package:ders1/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
  IconData icon = Icons.remove_red_eye;

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
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: _height * .25,
                    width: _width * .6,
                    child: Image(
                      image: AssetImage("assets/logo.png"),
                    )),
                SizedBox(
                  height: _height * .1,
                ),
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
                    Stack(
                      children: [
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
                        Container(
                          padding: EdgeInsets.fromLTRB(
                              _width * .48, _width * .018, 0, 0),
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                isObscure = !isObscure;
                                if (icon == Icons.remove_red_eye) {
                                  icon = Icons.remove_red_eye_outlined;
                                } else {
                                  icon = Icons.remove_red_eye;
                                }
                              });
                            },
                            icon: Icon(icon),
                          ),
                        )
                      ],
                    )
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
                      if (textEditingController!.text == "admin" &&
                          passwordController!.text == "password") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()));
                      } else {
                        Fluttertoast.showToast(
                            msg: "Kullanıcı Adı veya Şifreniz Hatalı!",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.CENTER,
                            backgroundColor: Colors.white,
                            textColor: Colors.black,
                            fontSize: 16.0);
                      }
                    },
                  ),
                  height: _height * .08,
                  width: _width * .3,
                ),
              ],
            ),
          ),
        ));
  }
}
