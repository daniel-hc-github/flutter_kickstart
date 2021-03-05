
import 'package:flutter/material.dart';
import 'package:flutter_kickstarter/pages/splash/splash_bloc.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  SplashBloc _bloc;

  void wait() async{
    Future.delayed(Duration(seconds: 3), () {

      if(_bloc.getToken().isEmpty){
        //GOTO Login
        Navigator.pushReplacementNamed(context, "/login");
      }else{
        //GOTO Home
        Navigator.pushReplacementNamed(context, "/login");
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _bloc = SplashBloc();
    wait();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
          child: Image.asset(
              "assets/icon.png",
            width: 150,
            height: 150,
          ),
        )
    );
  }
}
