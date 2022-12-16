// import 'alfre';
import 'dart:io';

import "package:alfred/alfred.dart";
import 'package:webify/webify.dart';

void main(List<String> args) async {
  Alfred app = Alfred(logLevel: LogType.error);
  app.all("/", (req, res) {
    res.headers.contentType = ContentType.html;
    return """
<html>
<body>
 ${Container(height: 512, width: 512, child: Text("Azka ya ini"))}
</body>
</html>
""";
  });
  await app.listen();

  print(app.server!.address.address);
}
