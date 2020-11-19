import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rick_and_morty_app/app/routes/app_routes.dart';
import 'package:shimmer/shimmer.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SplashScreen(
            seconds: 5,
            navigateAfterSeconds: Routes.HOME,
            loaderColor: Colors.transparent,
            imageBackground: AssetImage('assets/images/wallpaper.jpg'),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.green[100].withOpacity(0.7),
          ),
          Center(
            child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.45,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Lottie.asset('assets/animations/morty.json',
                        fit: BoxFit.contain,
                        width: MediaQuery.of(context).size.width * 0.7),
                    Shimmer.fromColors(
                      baseColor: Colors.green[50],
                      loop: 105,
                      highlightColor: Colors.green[900],
                      enabled: true,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Loading",
                          style: TextStyle(
                              fontFamily: "RmFont",
                              color: Colors.green[50],
                              fontWeight: FontWeight.bold,
                              fontSize: 64),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
