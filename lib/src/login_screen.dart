import 'dart:async';
import 'package:badminton_yard_booking_app/src/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'my_text_size.dart';




class LoginScreen extends StatefulWidget {
  final BuildContext context;

  const LoginScreen(this.context);

  @override
  _LoginThemeState createState() => _LoginThemeState();
}

class _LoginThemeState extends State<LoginScreen> {
  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();
  TextEditingController usernameController =  TextEditingController();
  TextEditingController passwordController = TextEditingController();
  //go back func
  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content:const Text('Do you want to exit an App'),
        actions: <Widget>[
           FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('No'),
          ),
           FlatButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Yes'),
          ),
        ],
      ),
    )) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                        height: MediaQuery.of(context).size.height * 0.6,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/login_screen_background.jpg"),
                              fit: BoxFit.cover),
                        )
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                     Container(
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(20, 160, 240, 1.0),
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(25))),
                      child: BounceInDown(
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height *
                                    0.05),
                            child: Image(
                              image: const AssetImage('assets/bayaboo_logo.png'),
                              width: MediaQuery.of(context).size.width * 0.4,
                              fit: BoxFit.cover,
                            )),
                        duration: const Duration(milliseconds: 500),
                      ),
                    ),
                  ],
                ),
              ),
              FadeIn(
                duration: const Duration(milliseconds: 2000),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.52,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height * 0.03),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 1),
                            blurRadius: 10,
                            spreadRadius: 0.005)
                      ]),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Center(
                            child: Text("Login",style: GoogleFonts.comfortaa(textStyle: TextStyle(fontSize:MyTextSize(context).h2))),
                          ),
                          margin: const EdgeInsets.only(
                              top: 15, bottom: 15),
                        ),
                        //username text field
                        Container(
                          height: MediaQuery.of(context).size.height * 0.09,
                          margin:  EdgeInsets.only(
                              top: MediaQuery.of(context).size.width*0.055, left: MediaQuery.of(context).size.width*0.07, right: MediaQuery.of(context).size.width*0.07),
                          child: TextField(
                            decoration: InputDecoration(
                              focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                              enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 2)),
                              hintText: "User Name",
                              hintStyle: GoogleFonts.comfortaa(textStyle: TextStyle(color: Colors.grey,fontSize: MyTextSize(context).h6)),
                            ),
                            controller: usernameController,style: TextStyle(fontSize:MyTextSize(context).h6),
                            showCursor: true,
                          ),
                        ),
                        //password text field
                        Container(
                          height: MediaQuery.of(context).size.height * 0.09,
                          margin:  EdgeInsets.only(
                              top: MediaQuery.of(context).size.width*0.015, left: MediaQuery.of(context).size.width*0.07, right: MediaQuery.of(context).size.width*0.07),
                          child: TextField(
                            decoration: InputDecoration(
                              focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                              enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 2)),
                              hintText:"Password",
                              hintStyle: GoogleFonts.comfortaa(textStyle: TextStyle(color: Colors.grey,fontSize: MyTextSize(context).h6)),
                            ),
                            controller: passwordController,style: TextStyle(fontSize:MyTextSize(context).h6),
                          ),
                        ),
                        Container(
                          margin:  EdgeInsets.only(
                              top: MediaQuery.of(context).size.width*0.035, left: MediaQuery.of(context).size.width*0.07, right: MediaQuery.of(context).size.width*0.07),
                          alignment: Alignment.centerRight,
                          child: Text('Forgot Password ?', style: GoogleFonts.comfortaa(textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold))),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.12 ,vertical: 30),
                          child:  RoundedLoadingButton(
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.height * 0.07,
                            child: Text("SIGN IN",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: MyTextSize(context).normal)
                            ),
                            color: const Color.fromRGBO(20, 160, 240, 1.0),
                            controller: _btnController,
                            onPressed: _onLoginPress,
                            borderRadius: MediaQuery.of(context).size.height * 0.04,
                          ),
                        ),
                        //button login
                      ],
                    ),
                  ),
                  margin: const EdgeInsets.only(
                      top: 35),
                ),
              ),
            ],
          ),
        ));
  }
  //focus change
  _onLoginPress() async{
    Timer(const Duration(seconds: 3), () {
      _btnController.success();
      Navigator.pushNamed(
          widget.context, HomeScreen.routeName,);
      _btnController.reset();
    });
  }
}
