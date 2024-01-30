// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:screen_brightness/screen_brightness.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final RouteObserver<Route> routeObserver = RouteObserver<Route>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const RouteAwarePage(),
      navigatorObservers: [
        routeObserver,
      ],
    );
  }
}

class RouteAwarePage extends StatefulWidget {
  static const routeName = '/routeAware';

  const RouteAwarePage({Key? key}) : super(key: key);

  @override
  _RouteAwarePageState createState() => _RouteAwarePageState();
}

class _RouteAwarePageState extends State<RouteAwarePage> with RouteAware {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    MyApp.routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
    MyApp.routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    super.didPush();
    ScreenBrightness().setScreenBrightness(0.7);
  }

  @override
  void didPushNext() {
    super.didPushNext();
    ScreenBrightness().resetScreenBrightness();
  }

  @override
  void didPop() {
    super.didPop();
    ScreenBrightness().resetScreenBrightness();
  }

  @override
  void didPopNext() {
    super.didPopNext();
    ScreenBrightness().setScreenBrightness(0.7);
  }

  @override
  Widget build(BuildContext context) {
    String url = 'https://bitly.ws/3beFZ'; //Where will the qr code be directed?

    return Scaffold(
      appBar: AppBar(
          title: const Text('QRCode Brightness Example'),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(96, 193, 193, 193)),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 70, bottom: 30),
            child: Text('Have your QR code scanned by the turnstile'),
          ),
          Center(
            child: QrImageView(
              data: url,
              size: 320,
              gapless: false,
              errorStateBuilder: (cxt, err) {
                return const Center(
                  child: Text(
                    'Sorry something went wrong',
                    textAlign: TextAlign.center,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
