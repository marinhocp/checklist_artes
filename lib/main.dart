import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

import 'dados/arte_data.dart';
import 'pages/lista_artes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    size: Size(400, 720),
    center: true,
    backgroundColor: Colors.transparent,
    skipTaskbar: false,
    windowButtonVisibility: false,
    alwaysOnTop: true,
    title: "::: ENGSOFT ::: ",
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light, primaryColor: const Color.fromARGB(66, 109, 108, 108)),
      debugShowCheckedModeBanner: false,
      home: ListaArtes(artes: artes),
    );
  }
}
