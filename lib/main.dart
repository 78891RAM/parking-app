// import 'package:flutter/material.dart';
// // import 'package:smart_parking/blocs/sensor_blocs/sensor_bloc.dart';
// import 'package:smart_parking/pages/home_page.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// void main() {
//   runApp( MyApp());
// }

// class MyApp extends StatelessWidget {
//   // const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         useMaterial3: true,
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_parking/Constants/theme.dart';
import 'package:smart_parking/pages/drawer.dart';
import 'package:smart_parking/pages/home_page.dart';
import 'package:smart_parking/pages/new.dart';
import 'package:smart_parking/provider/themeprovider.dart';
import 'package:smart_parking/provider/themestorage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // MobileAds.instance.initialize();

  String currentTheme = await LocalStorage.getTheme() ?? "light";

  runApp(
    ChangeNotifierProvider<ThemeProvider>(
      create: (context) => ThemeProvider(currentTheme),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.themeMode,
          // theme: ThemeData(
          //   primaryColor: Colors.white,
          //   appBarTheme: AppBarTheme(color: Colors.white),
          // ),
          theme: lightTheme,
          darkTheme: darkTheme,
          home: ZoomDrawerTest(),
        );
      },
    );
  }
}
