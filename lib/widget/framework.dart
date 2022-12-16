part of webify;

abstract class StatelessWidget extends Widget {

  @override
  build(){
    
  }

}

abstract class Widget extends DiagnosticableTree {
  /// Initializes [key] for subclasses.
  Widget();

  build(){

  }
}

abstract class DiagnosticableTree with Diagnosticable {}

mixin Diagnosticable {}

