/// Support for doing something awesome.
///
/// More dartdocs go here.
library webify;

// import 'alfre';
import 'dart:io';

import "package:alfred/alfred.dart";
import 'package:webify/webify.dart';

export 'src/webify_base.dart';

// TODO: Export any libraries intended for clients of this package.
part "widget/container.dart";

void runApp({
  int port = 3000,
  dynamic bindIp = '0.0.0.0',
  dynamic app,
}) async {
  Alfred alfred = Alfred(logLevel: LogType.error);
  alfred.all("/", (req, res) {
    res.headers.contentType = ContentType.html;
    return """
<html>
<body>
${app}
</body>
</html>
""";
  });
  await alfred.listen(port, bindIp);

  print(alfred.server!.address.address);
}
