import 'package:flutter/material.dart';
import 'package:second_app/gradiant_container.dart';

void main() async {
  /* if (kDebugMode) */ HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await FastCachedImageConfig.init(clearCacheAfter: const Duration(days: 15));

  runApp(const CBApp());
}

void main() {
  runApp(
      MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: GradiantContainer(
          const  Color.fromARGB(255, 2, 89, 6),
          const  Color.fromARGB(255, 80, 2, 110)
            ),
      ),
    ),
  );
}
