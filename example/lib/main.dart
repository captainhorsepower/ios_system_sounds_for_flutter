import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:taptic_feedback/taptic_feedback.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final initialCode = 0;
    final codeCount = 1560;

    final FeedbackLight = 1519;
    final FeedbackStrong = 1520;
    final DoubleFeedbackStrong = 1102;
    final TripleFeedbackLight = 1521;
    final TripleFeedbackStrong = 1107;
    final QuintVibrationLight = 1164;

    final Vibration = 1350;
    final DoubleVibration = 1011;
    final DoubleVibrationStronger = 1311;

    final AppStorePaymentSuccess = 1394;
    final AppStorePaymentSuccessSoundOnly = 1407;

    final ErrVibration = 1053;
    final WarmsMove = 1419;

    final SuccessVibration = 1262;
    final LongNotivicationCibration = 1265;

    final Bubbles = [1397, 1398];

    final NoNoNo = [1506, 1550];
    final NoNo = 1549;
    final No = 1507;
    final Nope = 1404;
    final NopeSoft = 1446;
    final Okay = 1405;
    final OkaySoft = 1428;
    final Alert = 1406;
    final AlertSoft = 1430;

    final Done = 1488;

    final VoiceInput = 1490;

    final PickerTic = [
      1416,
      1429,
      1459,
      1460,
      1464,
      1465,
      1466,
      1467,
      1468,
      1469,
      1470,
      1471,
      1476,
      1477,
      1479, //
      1480, 1481,
      1484,
      1485,
      1489,
    ];

    final Theeeeeenk = [
      1400,
      1436,
      1436,
      1437,
      1438,
      1439,
      1442,
      1444,
      1494,
      1497,
      1498,
      1500,
    ];
    final DefaultNotification = 1315;
    final DefaultNotificationWithVibration = 1300;

    final iMessageSentWithVibration = 1301;
    final iMessageSent = [1451, 1523];

    final iMessageReceived = 1452;

    final DoubleVibrationWithNotificationSound = 1012;
    final SingleVibrationWithNotificationSound = 1015;

    final ConnectionErrVibration = 1159;
    final ConnectionLightErrVibration = 1160;

    final KeyPress = [
      1057,
      1103,
      1104,
      1105,
      1123,
      1130,
      1155,
      1155,
      11261,
      1420,
      1421,
      1422,
      1522,
    ];

    final Tic = 1157;

    final TaTaTaTaTaTa = 1154;
    final TaTaTaTaTaTaLouder = 1151;

    final Bip = 1125;
    final Bup = 1126;
    final Beep = 1418;

    final BipBup = [1557, 1556];

    final BumPum = 1263;
    final PumBup = 1264;

    final AppleTVOn = 1128;
    final AppleTVSelect = 1129;
    final AppleTVsmth = 1150;

    final WindInTube = 1152;

    final LockSound = 1100;
    final LockSound2 = 1305;
    final PluggedIn = 1106;
    final PluggedIn2 = 1302;
    final PluggedIn3 = 1361;
    final CiticalBattery = 1006;
    final ShutterSound = [
      1108,
      1449,
      1527,
      1528,
    ];
    final PseudoShutterSounds = [1119, 1121, 1122];
    final TimeToSleep = [1158, 1531];
    final OpenCoce = 1533;
    final WakeUp = 1417;
    final WokeUp = 1513;

    final Pillips = [
      1110,
      1111,
      1112,
      1113,
      1114,
      1115,
      1116,
      1117,
      1118,
    ];
    final OldInternet = 1333;
    final DrammaticVibration = 1032;
    final DrammaticVibration2 = 1332;
    final SomethinIsAproachingWithVibration = 1320;
    final DrammaticSphy = 1336;

    final ShortBird = 1016;
    final ShooshAway = 1018;
    final Shoosh = 1318;
    final ShoooshWithVibrartion = 1303;

    final TrainWithVibratoin = 1023;
    final TrainWithVibratoin2 = 1323;

    final LongHornWithVibration = 1030;
    final LongHornWithVibration2 = 1330;

    var textStyle = TextStyle(
      color: Colors.blue[900],
      fontWeight: FontWeight.w800,
      fontFamily: 'Courier new',
      fontSize: 18.0,
      decoration: TextDecoration.underline,
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Taptic Feedback Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'TapticFeedback\nby {code}',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w800,
                    fontFamily: 'Courier new',
                    fontSize: 25.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: 220,
                width: 230,
                child: CupertinoPicker(
                  itemExtent: 100,
                  looping: true,
                  backgroundColor: Colors.transparent,
                  onSelectedItemChanged: (index) {
                    // TapticFeedback.feedbackYes();
                    TapticFeedback.fromCode(initialCode + index);
                  },
                  children: List.generate(codeCount, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 5,
                              blurRadius: 8,
                              color: Colors.blue,
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            '${initialCode + index}',
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              Divider(
                color: Colors.red,
                indent: 20,
                endIndent: 20,
              ),
              Text(
                'Common Feedback',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Courier new',
                  fontSize: 25.0,
                ),
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    CupertinoButton(
                      child: Text(
                        'feedback light',
                        style: textStyle,
                      ),
                      onPressed: () => TapticFeedback.light(),
                    ),
                    CupertinoButton(
                      child: Text(
                        'feedback strong',
                        style: textStyle,
                      ),
                      onPressed: () => TapticFeedback.strong(),
                    ),
                    CupertinoButton(
                      child: Text(
                        'double feedback strong',
                        style: textStyle,
                      ),
                      onPressed: () => TapticFeedback.doubleStrong(),
                    ),
                    CupertinoButton(
                      child: Text(
                        'Triple Feedback Light',
                        style: textStyle,
                      ),
                      onPressed: () => TapticFeedback.tripleLight(),
                    ),
                    CupertinoButton(
                      child: Text(
                        'Triple Feedback Strong',
                        style: textStyle,
                      ),
                      onPressed: () => TapticFeedback.tripleStrong(),
                    ),
                    CupertinoButton(
                      child: Text(
                        'Quint Feedback Light',
                        style: textStyle,
                      ),
                      onPressed: () => TapticFeedback.quintLight(),
                    ),
                    CupertinoButton(
                      child: Text(
                        'vibration',
                        style: textStyle,
                      ),
                      onPressed: () => TapticFeedback.fromCode(Vibration),
                    ),
                    CupertinoButton(
                      child: Text(
                        'Double Vibratoin',
                        style: textStyle,
                      ),
                      onPressed: () => TapticFeedback.fromCode(DoubleVibration),
                    ),
                    CupertinoButton(
                      child: Text(
                        'Double Vibration Stronger',
                        style: textStyle,
                      ),
                      onPressed: () => TapticFeedback.fromCode(DoubleVibrationStronger),
                    ),
                    CupertinoButton(
                      child: Text(
                        'AppStore Payment Success',
                        style: textStyle,
                      ),
                      onPressed: () => TapticFeedback.fromCode(AppStorePaymentSuccess),
                    ),
                    CupertinoButton(
                      child: Text(
                        'Err Vibration',
                        style: textStyle,
                      ),
                      onPressed: () => TapticFeedback.fromCode(ErrVibration),
                    ),
                    CupertinoButton(
                      child: Text(
                        'Warms move',
                        style: textStyle,
                      ),
                      onPressed: () => TapticFeedback.fromCode(WarmsMove),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
