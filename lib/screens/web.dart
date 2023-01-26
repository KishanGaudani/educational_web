import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'Global.dart';

class Web extends StatefulWidget {
  const Web({Key? key}) : super(key: key);

  @override
  State<Web> createState() => _WebState();
}

class _WebState extends State<Web> {
  final GlobalKey webkey = GlobalKey();

  InAppWebViewController? webViewController;

  InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
    crossPlatform: InAppWebViewOptions(
      mediaPlaybackRequiresUserGesture: false,
    ),
    android: AndroidInAppWebViewOptions(
      useHybridComposition: true,
    ),
    ios: IOSInAppWebViewOptions(
      allowsInlineMediaPlayback: true,
    ),
  );

  late PullToRefreshController pullToRefreshController;
  String url = "";
  final urlcontroller = TextEditingController();
  late final String web;
  bool back = false;
  bool forward = false;

  @override
  void initState() {
    super.initState();
    pullToRefreshController = PullToRefreshController(
        options: PullToRefreshOptions(
          color: Colors.blue,
        ),
        onRefresh: () async {
          if (Platform.isAndroid) {
            webViewController?.reload();
          } else if (Platform.isIOS) {
            webViewController?.loadUrl(
                urlRequest: URLRequest(url: await webViewController?.getUrl()));
          }
        });
  }

  Widget build(BuildContext context) {
    Map e = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        leading: (back)
            ? IconButton(
                onPressed: () {
                  webViewController?.goBack();
                  setState(() {});
                },
                icon: Icon(Icons.arrow_back),
              )
            : Container(),
        title: Text("${Current['name']}"),
        actions: [
          IconButton(
            onPressed: () {
              Global.BookMark.add(url);
              Global.BookMark = Global.BookMark.toSet().toList();
            },
            icon: Icon(Icons.bookmark),
          ),
          IconButton(
            onPressed: () {
              webViewController?.loadUrl(
                urlRequest: URLRequest(
                  url: Uri.parse(Current['url']),
                ),
              );
            },
            icon: Icon(Icons.home),
          ),
          (forward)
              ? IconButton(
                  onPressed: () {
                    webViewController?.goForward();
                    setState(() {});
                  },
                  icon: Icon(Icons.arrow_forward),
                )
              : Container(),
        ],
      ),
      body: Center(
        child: InAppWebView(
          key: webkey,
          initialUrlRequest: URLRequest(
            url: Uri.parse("${Current['url']}"),
          ),
          initialOptions: options,
          pullToRefreshController: pullToRefreshController,
          onWebViewCreated: (controller) {
            webViewController = controller;
          },
          onLoadStop: (controller, url) async {
            pullToRefreshController.endRefreshing();
            setState(() {
              this.url = url.toString();
              urlcontroller.text = this.url;
            });
            back = await webViewController!.canGoBack();
            forward = await webViewController!.canGoForward();
            setState(() {});
          },
        ),
      ),
    );
  }
}
