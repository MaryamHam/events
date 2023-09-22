import 'package:events/screens/home_screen.dart';
import 'package:flutter/material.dart';

class AppRoot extends StatelessWidget {

   static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);
      
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
     return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
       useMaterial3: true,
        ),
            darkTheme: ThemeData.dark(),
            themeMode: currentMode,
            
      home: HomeScreen(),
      
    );

        }
     );
  }
}