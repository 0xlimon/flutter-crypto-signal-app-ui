import 'package:crypto_signal/constants/constants.dart';
import 'package:crypto_signal/screens/widgets/dark_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  double _progress = 0;
  late InAppWebViewController webview;
  GlobalKey<ScaffoldState> scafoldkey = GlobalKey<ScaffoldState>();
  var options = InAppBrowserClassOptions(
    crossPlatform: InAppBrowserOptions(hideUrlBar: false),
    inAppWebViewGroupOptions: InAppWebViewGroupOptions(
      crossPlatform: InAppWebViewOptions(
          javaScriptEnabled: true,
          javaScriptCanOpenWindowsAutomatically: true,
          allowFileAccessFromFileURLs: true),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scafoldkey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Premium Payment"),
          backgroundColor: customColors.greyScale800,
          actions: [DarkModeWidget()],
        ),
        body: Stack(
          children: [
            InAppWebView(
              initialUrlRequest: URLRequest(
                url: Uri.parse(
                    "https://nowpayments.io/payment/?iid=5486639444481"),
              ),
              onWebViewCreated: (controller) {
                options = options;
                webview = controller;
              },
              onProgressChanged: (controller, progress) {
                setState(() {
                  _progress = progress / 100;
                });
              },
            ),
            _progress < 1
                ? SizedBox(
                    height: 3,
                    child: LinearProgressIndicator(
                      backgroundColor: customColors.primaryGreen800,
                    ),
                  )
                : SizedBox(),
          ],
        ));
  }
}
