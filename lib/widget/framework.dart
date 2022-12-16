part of webify;

abstract class StatefulWidget extends Widget {
  @override
  build() {
    return super.build();
  }
}
abstract class StatelessWidget extends Widget {
  @override
  build() {
    return super.build();
  }
}

abstract class Widget extends DiagnosticableTree {
  /// Initializes [key] for subclasses.
  Widget();

  build() {
    
  }
}

abstract class DiagnosticableTree with Diagnosticable {}

mixin Diagnosticable {}
