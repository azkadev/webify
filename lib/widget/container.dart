part of webify;

String Container({double height = 0, double width = 0, dynamic child}) {
  return """
  <div style="height:${height}px; width:${width}px; background: #666;">

  ${child} 
  </div>
  """;
}

String Text(String text) {
  return "${text}";
}


String Center({
  dynamic child
}){
return """
<center>${child}</center>
""";
}