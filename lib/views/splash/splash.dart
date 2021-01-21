import 'package:flutter/material.dart';
import 'package:textify/views/home/home.dart';

class SplashScreenMainView extends StatefulWidget {
  @override
  _SplashScreenMainViewState createState() => _SplashScreenMainViewState();
}

class _SplashScreenMainViewState extends State<SplashScreenMainView> {
  _navigateHome() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
      builder: (_) => HomeMainView()
    ), (route) => false);
  }

  @override
  void initState() { 
    super.initState();
    _navigateHome();
  }
  
  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: _theme.accentColor
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100.0,),
              Text("Textify",
                style: _theme.textTheme.headline4.copyWith(
                  color: Colors.white
                )
              ),
              Text("Texting easier",
                style: _theme.textTheme.bodyText1.copyWith(
                  color: Colors.white
                ),
              ),
              SizedBox(height: 100.0,),
              SizedBox(
                height: 20.0,
                width: 20.0,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}