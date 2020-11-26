import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';


class HomePage extends StatelessWidget {
  


  @override
  Widget build(BuildContext context) {

    FirebaseAdMob.instance.initialize(appId: "ca-app-pub-1887833933881385~7310507054");
    myBanner
    // typically this happens well before the ad is shown
      ..load()
      ..show(
        // Positions the banner ad 60 pixels from the bottom of the screen
        anchorOffset: 10.0,
        // Positions the banner ad 10 pixels from the center of the screen to the right
        horizontalCenterOffset: 0.0,
        // Banner Position
        anchorType: AnchorType.bottom,
      );
    myInterstitial
      ..load()
      ..show(
        anchorType: AnchorType.bottom,
        anchorOffset: 0.0,
        horizontalCenterOffset: 0.0,
      );

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/background11.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Center(
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/jogartruco');
                      },
                      shape: StadiumBorder(),
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container (
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFFFFFFF),
                              style: BorderStyle.none,
                              width: 1.0,
                            ),
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        padding:  const EdgeInsets.all(10.0),
                        child:

                          const Text('  Jogar   ',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'NanumGothic'),
                                )
                        ),
                    ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Center(
                  child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/cadastro');
                      },
                      shape: StadiumBorder(),
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0.0),
                      child: Container (
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFFFFFFF),
                              style: BorderStyle.none,
                              width: 1.0,
                            ),
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        padding:  const EdgeInsets.all(10.0),
                        child:
                          const Text('Cadastro Duplas', style: TextStyle(fontSize: 20),)
                      ),
                    ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
  keywords: <String>['flutterio', 'beautiful apps'],
  contentUrl: 'https://flutter.io/',
  childDirected: true,
  testDevices: <String>[], // Android emulators are considered test devices
);

BannerAd myBanner = BannerAd(
  // Replace the testAdUnitId with an ad unit id from the AdMob dash.
  // https://developers.google.com/admob/android/test-ads
  // https://developers.google.com/admob/ios/test-ads
  adUnitId: BannerAd.testAdUnitId,
  size: AdSize.smartBanner,
  targetingInfo: targetingInfo,
  listener: (MobileAdEvent event) {
    print("BannerAd event is $event");
  },
);

InterstitialAd myInterstitial = InterstitialAd(
  // Replace the testAdUnitId with an ad unit id from the AdMob dash.
  // https://developers.google.com/admob/android/test-ads
  // https://developers.google.com/admob/ios/test-ads
  adUnitId: InterstitialAd.testAdUnitId,
  targetingInfo: targetingInfo,
  listener: (MobileAdEvent event) {
    print("InterstitialAd event is $event");
  },
);
