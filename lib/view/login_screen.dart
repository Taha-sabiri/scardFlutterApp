import 'package:flutter/material.dart';
import 'package:scart/constant/color.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController myControllername = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'اسکارت',
                style: TextStyle(
                    color: MyColor.grey, fontFamily: 'Kenar', fontSize: 40),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 54,
                width: 310,
                child: TextFormField(
                  controller: myControllername,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 13,
                    color: Color.fromRGBO(98, 98, 98, 1),
                    decoration: TextDecoration.none,
                    fontFamily: 'Kalame',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.green,
                      )),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Color.fromRGBO(0, 0, 0, 0.26))),
                      hintText: "نام کاربری خود را وارد کنید",
                      hintStyle: TextStyle(
                        fontSize: 13,
                        color: Color.fromRGBO(158, 158, 158, 1),
                        decoration: TextDecoration.none,
                        fontFamily: 'Kalame',
                        fontWeight: FontWeight.w700,
                      ),
                      labelText: "نام کاربری ",
                      labelStyle: TextStyle(
                        fontSize: 13,
                        color: Color.fromRGBO(98, 98, 98, 1),
                        decoration: TextDecoration.none,
                        fontFamily: 'Kalame',
                        fontWeight: FontWeight.w700,
                      ),
                      floatingLabelAlignment: FloatingLabelAlignment.start),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 54,
                width: 310,
                child: TextFormField(
                  obscureText: true,
                  controller: myControllername,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 13,
                    color: Color.fromRGBO(98, 98, 98, 1),
                    decoration: TextDecoration.none,
                    fontFamily: 'Kalame',
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey,
                      )),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: Color.fromRGBO(0, 0, 0, 0.26))),
                      hintText: "گذرواژه خود را وارد کنید",
                      hintStyle: TextStyle(
                        fontSize: 13,
                        color: Color.fromRGBO(158, 158, 158, 1),
                        decoration: TextDecoration.none,
                        fontFamily: 'Kalame',
                        fontWeight: FontWeight.w700,
                      ),
                      labelText: " گذرواژه",
                      labelStyle: TextStyle(
                        fontSize: 13,
                        color: Color.fromRGBO(98, 98, 98, 1),
                        decoration: TextDecoration.none,
                        fontFamily: 'Kalame',
                        fontWeight: FontWeight.w700,
                      ),
                      floatingLabelAlignment: FloatingLabelAlignment.start),
                ),
              ),
              InkWell(
                onTap: () {
                  // GFToast.showToast(
                  //   'حساب کاربری با موفقیت ساخته شد',
                  //   context,
                  //   toastPosition: GFToastPosition.BOTTOM,
                  //   backgroundColor: Color.fromRGBO(21, 70, 248, 1),
                  //   textStyle: TextStyle(
                  //       fontSize: 12,
                  //       color: Colors.white,
                  //       decoration: TextDecoration.none,
                  //       fontFamily: 'Kalame',
                  //       fontWeight: FontWeight.w700),
                  // );
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => ));
                },
                child: SizedBox(
                  height: 54,
                  width: 310,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: MyColor.green,
                        borderRadius: BorderRadius.circular(7)),
                    child: Text(
                      "تکمیل ثبت نام",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          fontFamily: 'Kalame',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
