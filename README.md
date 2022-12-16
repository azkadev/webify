# Webify

Webify adalah framework web menggunakan bahasa dart dengan feature class dan syntax mirip flutter

## Install Package

```bash
dart pub add webify
```

### Quickstart

```dart
// ignore_for_file: non_constant_identifier_names
import 'package:webify/webify.dart';
void main(List<String> arguments) {
  runApp(
    port: 8080,
    bindIp: "0.0.0.0",
    app: MaterialApp(
      home: MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  build() {
    return Container(
      height: 512,
      width: 512,
      child: Center(
        child: Text("Azka dev Webify framework"),
      ),
    ).build();
  }
}
```

## FAQS (Pertanyaan)
Q = Pertanyaan
A = jawaban

> Q: Apakah ini bisa di jadikan alternative react ? / next js<br> A: Iya jika library sudah matang namun saat ini belum saya harus convert semua widget flutter menjadi html satu persatu jika anda ingin membantu convert silahkan kontribusi ya <br>