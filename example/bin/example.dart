// ignore_for_file: non_constant_identifier_names

import 'package:webify/webify.dart';

void main(List<String> arguments) {
  runApp(
    port: 8080,
    bindIp: "0.0.0.0",
    app: MyApp(),
  );
}
String MyApp() {
  return Container(height: 512, width: 512, child: Center(child: Text("Azka dev Webify framework")));
}
