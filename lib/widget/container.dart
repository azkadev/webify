part of webify;

class Container extends StatelessWidget {
  final double height;
  final double width;
  final Widget? child;
  Container({
    this.height = 0.0,
    this.width = 0.0,
    this.child,
  });

  @override
  build() {
    return """
  <div style="height:${height}px; width:${width}px; background: #666;">
  ${child!.build()} 
  </div>
  """;
  }
}

class Center extends StatelessWidget {
  final Widget child;
  Center({
    required this.child,
  });
  @override
  build() {
    return "<center>${child.build()}</center>";
  }
}

class Text extends StatelessWidget {
  final String data;
  Text(this.data);
  @override
  build() {
    return data;
  }
}

// String Container({double height = 0, double width = 0, dynamic child}) {
//   return """
//   <div style="height:${height}px; width:${width}px; background: #666;">

//   ${child}
//   </div>
//   """;
// }

// String Text(String text) {
//   return "${text}";
// }

// String Center({
//   dynamic child
// }){
// return """
// <center>${child}</center>
// """;
// }
