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
// part "widget/container.dart";
part "widget/app.dart";
part "widget/framework.dart";
part "widget/container.dart";
part "widget/scaffold.dart";

void runApp({
  int port = 3000,
  dynamic bindIp = '0.0.0.0',
  Widget? app,
}) async {
  Alfred alfred = Alfred(logLevel: LogType.error);
  alfred.all("/", (req, res) {
    res.headers.contentType = ContentType.html;
    String data = "";
    if (app != null) {
      if (app.build() is Widget) {
        data = (app.build() as Widget).build();
      } else if (app.build() is String) {
        data = app.build();
      }
    }
    return """
<html>
<body>
${data}
</body>
</html>
""";
  });
  await alfred.listen(port, bindIp);

  print(alfred.server!.address.address);
}
