import 'package:flutter/material.dart';
import 'package:second_app/gradiant_container.dart';

void main() async {
  /* if (kDebugMode) */ HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await FastCachedImageConfig.init(clearCacheAfter: const Duration(days: 15));

  runApp(const CBApp());
}

class CBApp extends StatelessWidget {
  static GlobalKey flutterMapKey = GlobalKey();
  static GlobalKey<ScaffoldState> cbAppKey = GlobalKey();

  static String currentPlattform = "unknown";

  const CBApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<ModelMapData>(create: (context) => ModelMapData()),
        ],
        child: Consumer<ModelMapData>(builder: (context, modelMap, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'CB App',
              theme: FlexThemeData.light(
                scheme: FlexScheme.greenM3,
                // useMaterial3: true,
              ),
              darkTheme: FlexThemeData.dark(
                scheme: FlexScheme.greenM3,
                // useMaterial3: true,
              ),
              themeMode: ThemeMode.system,
              locale: modelMap.currentLocale, // const Locale("de", "DE"),
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              // supportedLocales: AppLocalizations.supportedLocales,

              // localizationsDelegates: const [
              //   GlobalMaterialLocalizations.delegate,
              //   GlobalWidgetsLocalizations.delegate,
              //   GlobalCupertinoLocalizations.delegate,
              // ],
              supportedLocales: const [
                Locale('en'), // English
                Locale('de'), // German
              ],
              initialRoute: "/",
              routes: {
                "/": (context) => const CBAppMain(title: 'Freie Lastenradl'),
                "/bookings": (context) => const BookingsPage(),
                "/settings": (context) => const SettingsPage(),
              });
        }));
  }
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
