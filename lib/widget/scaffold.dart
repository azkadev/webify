part of webify;

class Scaffold extends StatefulWidget { 
  final Widget? body;
  Scaffold({ 
    this.body,
  });
  @override
  build() {
    return body!.build();
  }
}
