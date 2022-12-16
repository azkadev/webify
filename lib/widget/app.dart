part of webify;

class MaterialApp extends StatefulWidget {
  final String title;
  final Widget? home;
  MaterialApp({
    this.title = "",
    this.home,
  });
  @override
  build() {
    return home!.build();
  }
}
